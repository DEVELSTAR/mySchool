Rails.application.routes.draw do
  get 'students/index'
  get 'teachers/index'
  root 'home#index'
end
