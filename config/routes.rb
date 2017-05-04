Rails.application.routes.draw do
  root :to => 'static#index'
  resources :blink, :only => [:index, :create]
end
