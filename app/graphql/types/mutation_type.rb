module Types
    class MutationType < Types::BaseObject
        field :create_user, mutation: Mutations::CreateUser
        field :create_translation, mutation: Mutations::CreateTranslation
        field :update_translation, mutation: Mutations::UpdateTranslation
        field :login_user, mutation: Mutations::LogInUser
    end
end
