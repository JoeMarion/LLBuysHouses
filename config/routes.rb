Rails.application.routes.draw do
  get    'admins/index'
  get    'dashboard'       => 'admins#index'
  get    'dashboard/enter' => 'devise/sessions#create'
  post   'dashboard/enter' => 'devise/sessions#create'
  delete 'dashboard/exit'  => 'devise/session#destroy'

  root to: 'static_pages#index'
end
