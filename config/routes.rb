Rails.application.routes.draw do
  devise_for :users
  # Admin Panel (ActiveAdmin)
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Public Website
  root "exams#index"

  resources :exams, only: [:index, :show]
end