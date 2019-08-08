module Types
    class DifficultyType < BaseObject
        field :id, ID, null: false
        field :level, Int, null: false
        field :description, String, null: false
    end
end