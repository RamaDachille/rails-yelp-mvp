Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: %i[index create new show] do
    resources :reviews, only: %i[new create show]
  end
end
#         Prefix Verb URI Pattern                            Controller#Action
#    restaurants GET  /restaurants(.:format)                 restaurants#index
#                POST /restaurants(.:format)                 restaurants#create
# new_restaurant GET  /restaurants/new(.:format)             restaurants#new
#     restaurant GET  /restaurants/:id(.:format)             restaurants#show
# turbo_recede_historical_location GET  /recede_historical_location(.:format)  turbo/native/navigation#recede
# turbo_resume_historical_location GET  /resume_historical_location(.:format)  turbo/native/navigation#resume
# turbo_refresh_historical_location GET  /refresh_historical_location(.:format) turbo/native/navigation#refresh
