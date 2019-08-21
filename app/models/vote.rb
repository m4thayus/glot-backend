class Vote < ApplicationRecord
    belongs_to :translation
    belongs_to :user
end
