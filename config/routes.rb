Repairbot::Application.routes.draw do

  devise_for :techs 
  resources :customers
  root 'customers#index'



end
