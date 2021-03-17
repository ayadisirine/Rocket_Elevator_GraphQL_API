class Building < ApplicationRecord
    belongs_to :customer, foreign_key: "customer_id"
    has_many :batteries
    has_many :building_details
    has_many :factInterventions
end
