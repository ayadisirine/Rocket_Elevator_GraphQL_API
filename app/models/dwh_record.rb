class DwhRecord < ActiveRecord::Base      #Connection with DWH
  self.abstract_class = true
  establish_connection :"dwh_#{Rails.env}"
end
