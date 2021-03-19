class Column < ApplicationRecord        #Defining relations
    belongs_to :battery, foreign_key: "battery_id"
    has_many :elevators
end
