class Employee < ApplicationRecord      #Defining relations
    belongs_to :user, foreign_key: "user_id"
    has_many :factInterventions
end
