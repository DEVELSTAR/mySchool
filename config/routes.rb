Rails.application.routes.draw do
  get 'students/index'
  root 'home#index'
end
