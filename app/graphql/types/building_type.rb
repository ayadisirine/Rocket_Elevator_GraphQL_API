module Types
  class BuildingType < Types::BaseObject
    field :id, ID, null: false
    field :address_building, String, null: true
    field :full_name_administrator, String, null: true
    field :email_administrator, String, null: true
    field :phone_administrator, String, null: true
    field :full_name_technical_contact_building, String, null: true
    field :technical_contact_building_email, String, null: true
    field :technical_contact_building_phone, String, null: true
    field :customer_id, Integer, null: true
  end
end
