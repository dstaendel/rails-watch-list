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

  get '/lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: 'new_list_bookmark'

  post '/lists/:list_id/bookmarks', to: 'bookmarks#create', as: "list_bookmarks"

  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: 'bookmark'
end
