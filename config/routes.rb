Rails.application.routes.draw do
  resources :emails

  resources :hacks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'hacks#new'
  get 'hacks/index'
end
