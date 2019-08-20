module Types
    class KnownLanguageType < BaseObject
        field :id, ID, null: false
        field :vetted, Boolean, null: false
        field :language, LanguageType, null: false
        field :difficulty, DifficultyType, null: false
    end
end