Rails.application.routes.draw do
  resources :campers, only: [:create,:show,:index]
  resources :activities, only: [:destroy, :index]
  resources :signups, only: [:create]
  get '/campers', to: 'campers#index'
  get '/campers/:id', to: 'campers#show'
  post '/campers', to: 'campers#post'
  get '/activities', to: 'activities#index'
  delete '/activities/:id', to: 'activities#destroy'
  post '/signups', to: 'signups#create'
end
