# == Route Map
#

Rails.application.routes.draw do
  if Rails.env.development? || Rails.env.production? 
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  
  post "/graphql", to: "graphql#execute"
  mount ActionCable.server, at: '/cable'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
