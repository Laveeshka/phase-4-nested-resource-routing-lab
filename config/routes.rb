Rails.application.routes.draw do
  resources :items, only: [:index]

  resources :users, only: [:show] do
    #add nested resource
    resources :items, only: [:index, :show, :create]
  end

end
