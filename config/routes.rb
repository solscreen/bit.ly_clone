BitlyClone::Application.routes.draw do

  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"

  resources :users

  resources :long_urls, :except => [:new, :edit, :update]

  resources :short_urls, :except => [:new, :edit, :update]
end
