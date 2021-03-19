class Elevator < ApplicationRecord      #Defining relations
    belongs_to :column , foreign_key: "column_id"
end
