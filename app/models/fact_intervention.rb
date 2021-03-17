class FactIntervention < DwhRecord
    belongs_to :building
    has_one :building
    has_one :battery
    has_one :column
    has_one :elevator
end
