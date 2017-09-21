Rails.application.routes.draw do

  root :to => "products#index"

  resources :products, except: [:show, :destroy]
end
