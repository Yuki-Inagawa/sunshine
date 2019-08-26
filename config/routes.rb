Rails.application.routes.draw do
  root 'ikezakis#index'
  resources :ikezakis do
    collection do
      get "about"
      get "list"
    end
  end
end
