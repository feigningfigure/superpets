Rails.application.routes.draw do

  root to: "superpets#index"
  resources :superpets

end
