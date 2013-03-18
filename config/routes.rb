Mobius::Application.routes.draw do
  resources :videos


  resources :songs


  resources :articles


  resources :arts


  devise_for :users

  root :to => "home#index"
end
