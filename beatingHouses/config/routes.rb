Rails.application.routes.draw do
  get 'buildings/index'
  get 'buildings/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'buildings#index'
end
