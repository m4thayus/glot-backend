class Difficulty < ApplicationRecord
    has_many :texts
    has_many :known_languages
end
