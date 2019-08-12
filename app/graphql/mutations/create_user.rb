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

        type Types::UserType

        def resolve(last_name: nil, first_name: nil, auth_provider: nil)
            User.create!(
                first_name: first_name,
                last_name: last_name,
                username: auth_provider&.[](:username)&.[](:username),
                password: auth_provider&.[](:username)&.[](:password)
            )
        end
    end
end
