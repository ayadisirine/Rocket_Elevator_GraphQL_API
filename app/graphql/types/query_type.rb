module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end

    # Query connection
    field :building, [BuildingType], null: false,
      description: "Building queries"
    def building
      Building.all
    end

    field :address, [AddressType], null: false,
      description: "Address queries"
    def address
      Address.all
    end

    field :battery, [BatteryType], null: false,
      description: "Battery queries"
    def battery
      Battery.all
    end

    field :buildingDetail, [BuildingDetailType], null: false,
      description: "Building Detail queries"
    def buildingDetail
      BuildingDetail.all
    end

    field :column, [ColumnType], null: false,
      description: "Column queries"
    def column
      Column.all
    end

    field :customer, [CustomerType], null: false,
      description: "Customer queries"
    def customer
      Customer.all
    end



  end
end
