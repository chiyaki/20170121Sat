Rails.application.routes.draw do
  get 'welcome/index'
  root 'templates#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :templates

  resources :ldpages do
  end

  namespace :admin do
    resources :templates
  end

  namespace :account do
    resources :ldpages
  end

end
