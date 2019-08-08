module Types
    class VoteType < BaseObject
        field :id, ID, null: false
        field :up, Boolean, null: false
        field :translation, TranslationType, null: false
    end
end