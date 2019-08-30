Rails.application.routes.draw do
  devise_for :users
  get   'users/:id'   =>  'users#show'
  root 'ikezakis#index'
  resources :ikezakis do
    collection do
      get "about"
      get "list"
    end
  end
end
