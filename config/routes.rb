Rails.application.routes.draw do
  devise_for :users
  get   'users/:id'   =>  'users#show'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'ikezakis#index'
  resources :ikezakis do
    collection do
      get "about"
      get "list"
    end
  end
end
