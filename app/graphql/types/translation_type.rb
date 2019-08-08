module Types
    class TranslationType < BaseObject
        field :id, ID, null: false
        field :content, String, null: false
        field :status, String, null: false
        field :translator, UserType, null: false, method: :user
        field :text, TextType, null: false
    end
end