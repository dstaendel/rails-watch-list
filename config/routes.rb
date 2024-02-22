Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Route to show all lists
  get 'lists', to: 'lists#index'

  # Route to show the form for a new list
  get 'lists/new', to: 'lists#new', as: 'new_list'

  # Route to show details of a given list
  get 'lists/:id', to: 'lists#show', as: 'list'

  # Route to create a new list
  post 'lists', to: 'lists#create'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get 'lists/:id/bookmarks/new', to: 'bookmarks#new', as: 'new_bookmark'

  post 'bookmarks', to: 'bookmarks#create'

  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: 'bookmark'

end
