module Types
    class MutationType < Types::BaseObject
        field :create_user, mutation: Mutations::CreateUser
        field :create_translation, mutation: Mutations::CreateTranslation
        field :signin_user, mutation: Mutations::SignInUser
    end
end
