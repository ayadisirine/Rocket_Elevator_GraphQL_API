Rails.application.routes.draw do
  root 'welcome#index'
end

# if Rails.env.development?
#   mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: "graphql#execute"
# end
# post "/graphql", to: "graphql#execute"