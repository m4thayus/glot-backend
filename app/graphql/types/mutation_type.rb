module Types
    class MutationType < Types::BaseObject
        field :login_user, mutation: Mutations::LogInUser
        field :create_user, mutation: Mutations::CreateUser
        field :create_translation, mutation: Mutations::CreateTranslation
        field :update_translation, mutation: Mutations::UpdateTranslation
        field :create_text, mutation: Mutations::CreateText
        field :create_known_language, mutation: Mutations::CreateKnownLanguage
        field :create_vote, mutation: Mutations::CreateVote
    end
end
