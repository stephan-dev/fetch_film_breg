Rails.application.routes.draw do
  #get 'movies/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#search'
  post 'show', to: "movies#show"
  get 'show', to: "movies#show"
  post 'create', to: 'movies#create'
  get 'create', to: 'movies#show'
end
