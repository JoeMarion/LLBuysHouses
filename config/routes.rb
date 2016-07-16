Rails.application.routes.draw do
  get    'admins/index'
  get    'dashboard'       => 'admins#index'

  root to: 'static_pages#index'

  devise_for :users, :skip => [:sessions]
  as :user do
    get 'dashboard/enter'   => 'devise/sessions#new', :as => :new_user_session
    post 'dashboard/enter'  => 'devise/sessions#create', :as => :user_session
    delete 'dashboard/exit' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
end
