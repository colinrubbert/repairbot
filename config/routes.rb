Repairbot::Application.routes.draw do

  root 'customers#landing'
  devise_for :techs
  resources :customers
  resources :workorders do
    resources :repairs
  end


end
