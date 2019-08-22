module Types
    class UserType < BaseObject
        field :id, ID, null: false
        field :username, String, null: false
        field :first_name, String, null: false
        field :last_name, String, null: false
        field :texts, [TextType], null: false
        field :translations, [TranslationType], null: false
        field :languages, [LanguageType], null: false
        field :known_languages, [KnownLanguageType], null: false

        def languages
            object.languages.uniq
        end
    end
end