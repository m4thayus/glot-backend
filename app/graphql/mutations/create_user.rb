module Mutations
    class CreateUser < BaseMutation
        # often we will need input types for specific mutation
        # in those cases we can define those input types in the mutation class itself
        class AuthProviderSignupData < Types::BaseInputObject
            argument :username, Types::AuthProviderUsernameInput, required: false
        end

        argument :last_name, String, required: true
        argument :first_name, String, required: true
        argument :auth_provider, AuthProviderSignupData, required: false

        field :token, String, null: true
        field :user, Types::UserType, null: true

        def resolve(last_name: nil, first_name: nil, auth_provider: nil)
            user = User.create!(
                first_name: first_name,
                last_name: last_name,
                username: auth_provider&.[](:username)&.[](:username),
                password: auth_provider&.[](:username)&.[](:password)
            )       
            crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
            token = crypt.encrypt_and_sign("user-id:#{ user.id }")

            context[:session][:token] = token

            { user: user, token: token }
        end
    end
end