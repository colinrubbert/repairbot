Repairbot::Application.routes.draw do

  devise_for :techs
  root 'customers#index'

  resources :customers

end
