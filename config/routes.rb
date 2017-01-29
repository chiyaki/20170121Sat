Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ldpages
  namespace :admin do
  end

  namespace :account do
    resources :ldpages
  end

end
