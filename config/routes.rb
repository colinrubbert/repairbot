Repairbot::Application.routes.draw do

  root 'customers#landing'
  devise_for :techs
  resources :customers do
    resources :workorders
  end




end
