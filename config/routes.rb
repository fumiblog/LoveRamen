Rails.application.routes.draw do
  devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_in' => 'admins/sessions#new', as: 'new_admin_session'
    post 'admins/sign_in' => 'admins/sessions#create', as: 'admin_session'
    delete 'admins/sign_out' => 'admins/sessions#destroy', as: 'destroy_admin_session'
  end

  devise_for :users, skip: :all
  devise_scope :user do
    get 'users/sign_in' => 'users/sessions#new', as: 'new_user_session'
    post 'users/sign_in' => 'users/sessions#create', as: 'user_session'
    delete 'users/sign_out' => 'users/sessions#destroy', as: 'destroy_user_session'
    get 'users/sign_up' => 'users/registrations#new', as: 'new_user_registration'
    post 'users' => 'users/registrations#create', as: 'user_registration'
    get 'users/password/new' => 'users/passwords#new', as: 'new_user_password'
  end

  get 'homes/top'
  root 'homes#top'

  namespace 'admins' do
    resources :genres, only: [:index, :create, :show, :edit, :update, :destroy]
    resources :users, only: [:index]
    resources :ramenshops, only: [:new, :index, :create, :edit, :update, :destroy]
    resources :posts, only: [:index]
  end

  namespace 'users' do
    resources :users, only: [:new, :create, :edit, :update, :show]
    resources :posts, only: [:new, :create, :index, :edit, :update, :destroy, :show]
    resources :ramenshops, only: [:index, :show] do
      resource :nices, only: [:create, :destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
