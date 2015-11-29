Rails.application.routes.draw do
  root to: "visitors#index"
  devise_for :users
  resources :students do
    get :subjects
  end
  resources :teachers do
    get :subjects
  end
  get '/subjects', to: 'reports#subjects', as: 'reports_subjects'
end
