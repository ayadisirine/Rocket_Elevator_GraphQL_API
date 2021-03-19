class User < ApplicationRecord      #Defining relations
    has_many :employees
    has_many :customers
end
