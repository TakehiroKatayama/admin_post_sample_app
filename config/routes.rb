Rails.application.routes.draw do
  root 'homes#index'
  resources :news, only: %i[index show]

  devise_for :admin_users, path: 'admin'
  namespace :admin do
    root 'homes#index'
    resources :news
  end
end
