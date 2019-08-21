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

            ## Replace this with a non-default, user defined choice 
            ## Set default known language
            eng = Language.find_by(name: "English")
            int = Difficulty.find_by(level: 5)
            KnownLanguage.create!(
                vetted: false,
                user_id: user.id,
                language_id: eng.id,
                difficulty_id: int.id
            )

            crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
            token = crypt.encrypt_and_sign("user-id:#{ user.id }")

            { token: token }
        end
    end
end
