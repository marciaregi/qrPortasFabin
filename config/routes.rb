Rails.application.routes.draw do
  resources :door_people
  resources :people
  resources :doors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
