module Types
    class TextType < BaseObject
        field :id, ID, null: false
        field :title, String, null: false
        field :content, String, null: false
        field :status, String, null: false
        field :pay, Int, null: false
        field :creator, UserType, null: false, method: :user
        field :difficulty, DifficultyType, null: false
        field :source_language, LanguageType, null: false
        field :target_language, LanguageType, null: false
        field :translations, [TranslationType], null: false
    end
end