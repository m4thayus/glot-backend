class KnownLanguage < ApplicationRecord
    belongs_to :user
    belongs_to :language
    belongs_to :difficulty
end
