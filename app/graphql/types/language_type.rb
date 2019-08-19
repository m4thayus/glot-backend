module Types
    class LanguageType < BaseObject
        field :id, ID, null: false
        field :name, String, null: false
        field :short_name, String, null: false
        field :source_texts, [TextType], null: false
        field :difficulties, [DifficultyType], null: false

        def difficulties
            object.difficulties.uniq
        end
    end
end