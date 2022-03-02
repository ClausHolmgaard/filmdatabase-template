Rails.application.routes.draw do
  resources :movies
  get '/search', to: 'movies#search'
  get '/result', to: 'movies#result'
  post '/result', to: 'movies#result'

  root "movies#index"
end
