Rails.application.routes.draw do
  # root 'users/index'
    root 'users#index'
  # get 'users/register'

  get 'users/register'
  post 'users/login'

  get 'users/create'
  post 'users/create'
  get 'users/login'

  post 'users/success'
  get 'users/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
