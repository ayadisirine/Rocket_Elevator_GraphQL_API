module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

   

    # Query connection
    field :buildings, [BuildingType], null: false,
      description: "Building queries"
    def buildings
      Building.all
    end

    field :building, BuildingType, null: false do
      argument :id, ID, required: true
    end
    def building(id:)
      building = Building.find(id)
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

    field :elevator, [ElevatorType], null: false,
      description: "Elevator queries"
    def elevator
      Elevator.all
    end

    field :employees, [EmployeeType], null: false,
      description: "Employee queries"
    def employees
      Employee.all
    end

    field :employee, EmployeeType, null: false do
      argument :id, ID, required: true
    end
    def employee(id:)
      Employee.find(id)
    end

    # field :lead, [LeadType], null: false,
    #   description: "Lead queries"
    # def lead
    #   Lead.all
    # end

    field :quote, [QuoteType], null: false,
      description: "Quote queries"
    def quote
      Quote.all
    end

    field :user, [UserType], null: false,
     description: "User queries"
    def user
      User.all
    end





    field :factInterventions, [FactInterventionType], null: false,
      description: "Listing all the FactInterventions"
    def factInterventions
      FactIntervention.all
    end

    field :factIntervention, FactInterventionType, null: false do
      argument :id, ID, required: true
    end
    def factIntervention(id:)
      fact = FactIntervention.find(id)
    end

    
  end
end
