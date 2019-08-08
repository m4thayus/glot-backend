module Types
    class LanguageType < BaseObject
        field :id, ID, null: false
        field :name, String, null: false
        field :short_name, String, null: false
        field :difficulties, [DifficultyType], null: false
    end
end