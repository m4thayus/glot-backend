class Difficulty < ApplicationRecord
    has_many :texts
    has_many :known_languages
    has_many :users, through: :known_languages
end
