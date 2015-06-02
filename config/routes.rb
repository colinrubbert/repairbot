Repairbot::Application.routes.draw do

  devise_for :users
  root 'techs#index'

end
