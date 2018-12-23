Rails.application.routes.draw do
  resources :tests
  devise_for :users

  # Root
  root "tests#index"
  # End Root
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
