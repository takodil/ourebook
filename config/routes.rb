Ourebook::Application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "sellers#new", :as => "sign_up"
  get "sign_up_buyer" => "buyers#new", :as => "sign_up_buyer"
  get "tags/:tag", to: 'ebooks#index', as: :tag
  get "log_in_buyer" => "session_buyers#new", :as => "log_in_buyer"
  get "log_out_buyer" => "session_buyers#destroy", :as => "log_out_buyer"
  get "sign_up_options" => "sessions#options_sign_up", :as => "sign_up_options"
  get "log_in_options" => "sessions#options_log_in", :as => "log_in_options"
  root :to => "ebooks#index"
  resources :sellers
  resources :buyers
  resources :sessions
  resources :session_buyers
  resources :ebooks


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
