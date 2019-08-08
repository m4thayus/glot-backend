class User < ApplicationRecord
    has_many :translations, class_name: "Translation", foreign_key: "translator_id"

    has_many :texts, foreign_key: "creator_id"
    has_many :text_translations, through: :texts, source: :translation

    has_many :votes
    has_many :vote_translations, through: :votes, source: :translation

    has_many :known_languages
    has_many :languages, through: :known_languages
    has_many :difficulties, through: :known_languages
end
