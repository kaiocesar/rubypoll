Rails.application.routes.draw do
  defaults format: :json do
    resources :polls, path: :poll, only: %i[show create]
    get '/poll/:id/stats', to: 'polls#stats'
    post '/poll/:id/vote', to: 'polls#vote'
  end
end