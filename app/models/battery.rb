class Battery < ApplicationRecord       #Defining relations
    belongs_to :building
    has_many :columns
end
