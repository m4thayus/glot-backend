module Types
    class MutationType < Types::BaseObject
        field :create_translation, mutation: Mutations::CreateTranslation
    end
end
