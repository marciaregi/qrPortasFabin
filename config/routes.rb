Rails.application.routes.draw do
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #devise_for :users, controllers: {registrations: 'registrations'}
  devise_for :users
  # :skip => [:registrations, :sessions]

  resources :door_people
  resources :people
  resources :doors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
  
    unauthenticated :user do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # as :user do
  #   # Registrations
  #   get   '/signup'   => 'users/registrations#new', as: :new_user_registration
  #   post  '/signup'   => 'users/registrations#create', as: :user_registration
  
  # end
  get '/admin' => 'home#admin', as: :admin_home
  get '/user' => 'home#user', as: :user_home
  get '/admin/door' => 'doors#new', as: :admin_new_door
end

