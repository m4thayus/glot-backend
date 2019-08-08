module Types
    class TranslationType < BaseObject
        field :id, ID, null: false
        field :title, String, null: false
        field :content, String, null: false
        field :status, String, null: false
        field :translator, UserType, null: false, method: :user
        field :text, TextType, null: false
        field :votes, [VoteType], null:false
    end
end