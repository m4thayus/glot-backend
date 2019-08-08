class Text < ApplicationRecord
    belongs_to :user, foreign_key: "creator_id"
    belongs_to :difficulty
    belongs_to :source_language, class_name: "Language", foreign_key: "source_language_id"
    belongs_to :target_language, class_name: "Language", foreign_key: "target_language_id"

    has_many :translations
end
