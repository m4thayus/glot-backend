module Types
    class KnownLanguageType < BaseObject
        field :id, ID, null: false
        field :vetted, Boolean, null: false
        field :language, LanguageType, null: false
    end
end