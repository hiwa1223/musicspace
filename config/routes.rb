Rails.application.routes.draw do
  devise_for :users
  root  'music#index'
end
