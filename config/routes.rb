Rails.application.routes.draw do
  # root to: 'lists#index'
  root to: 'pages#home'
  resources :planets, only: :show do
    resources :aliens, only: [:new, :create]
  end
  resources :aliens, only: [:destroy] do
    resources :mutations, only: [:new, :create]
  end
end


# As a user I can create a mutation for an alien
# mutations#new -> get '/aliens/:alien_id/mutations/new'
# mutations#create -> post '/aliens/:alien_id/mutations'

# As a user I can see one planet's aliens
# planets#show -> /planets/:id

# As a user I can add an alien to a planet
# aliens#new -> planets/:planet_id/aliens/new
# aliens#create -> planets/:planet_id/aliens

# As a user I can delete an alien
# aliens#destroy -> aliens/:id
