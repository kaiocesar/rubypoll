Rails.application.routes.draw do
  resources :polls, only: %i[index show create]
  get '/poll/:id/stats', to: 'polls#stats'
  post '/poll/:id/vote', to: 'polls#vote'
end
