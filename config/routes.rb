Rails.application.routes.draw do
  devise_for :users
  as :user do
    get "signin" => "devise/sessions#new"
    get "signup" => "devise/registrations#new"
    delete "signout" => "devise/sessions#destroy"
  end
  resources :friends
  get 'home/about'
  root 'home#index'


end
