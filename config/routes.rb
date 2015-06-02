Repairbot::Application.routes.draw do

  devise_for :teches
  root 'customers#index'

end
