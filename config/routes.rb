Rails.application.routes.draw do

  root 'landing#index'
  get 'landing/index' => 'landing#index', as: :landing

 # get 'student_profiles' => 'student_profiles#index', as: :student_profiles

  #get 'business_profiles' => 'business_profiles#index', as: :business_profiles
  # get 'users/profile'
  get 'admin' => 'admin#index', as: :admin

  resources :business_listings
  resources :business_profiles
  resources :student_profiles
  resources :admin

  devise_for :users, :controllers => {
    :invitations => 'users/invitations',
    :registrations => "users/registrations"
  }

  resources :users, only: [:show]


end
