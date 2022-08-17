Rails.application.routes.draw do
  get 'students/index'
  get 'teachers/index'
  root 'home#index'

  get 'teachers/teupdates'
  get 'students/stupdates'
  resources :students
  resources :updates
end
