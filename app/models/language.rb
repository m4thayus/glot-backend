class Language < ApplicationRecord
    has_many :source_texts, class_name: "Text", foreign_key: "source_language_id"
    has_many :target_texts, class_name: "Text", foreign_key: "target_language_id"

    has_many :known_languages
    has_many :users, through: :known_languages
    has_many :difficulties, through: :known_languages
end
