Rails.application.routes.draw do
  resources :menus
  resources :users do
    member do
      get :confirm_email
    end
  end
  resources :cartitems
  resources :orders
  resources :userhome
  resources :pendingorders
  get "/" => "home#index"
  delete "cartitems", to: "cartitems#deleteall"
  get "/sing-in" => "sessions#new", as: :new_sessions
  post "/sign_in", to: "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session
end
