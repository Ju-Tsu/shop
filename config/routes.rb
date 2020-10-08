Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
	  root 'home#index'
    resources :items, only: :index do
      post :add_to_cart, on: :member
      delete :delete_from_cart, on: :member
    end
    resources :carts, onl: :index
    resources :orders, only: :create do
      get :success, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
end
