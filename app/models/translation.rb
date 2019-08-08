class Translation < ApplicationRecord
    belongs_to :user, foreign_key: "translator_id"
    belongs_to :text

    has_one :language, through: :text

    has_many :votes
    has_many :users, through: :votes
end
