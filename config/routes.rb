Punaise::Application.routes.draw do
  resources :currencies


  resources :boards


  resources :comments


  resources :puns


  resources :homes


  resources :states


  resources :countries


  devise_for :users

  resources :categories


  devise_for :users do
    get "login", :to => "devise/sessions#new"
    get "logout", :to => "devise/sessions#destroy"
    get "register", :to => "devise/registrations#new"
  end
  
  resources :users

resources :puns, :only => [:index, :show] do
  resources :likes, :only => [:create, :destroy]
end

  get "users/:id/board" => "users#board"
  
  #get "users/:id/follow/" => "users#follow"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
   # match 'users/:id/boards' => 'boards#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # match 'users/:id/settings' => 'settings', :as => :settings
  # This route can be invoked with purchase_url(:id => product.id)
  #match "users/follow/:term" => "users#follow", :controller=>"users", :action=>"follow", :as => :follow, :via => :post
  match '/:id/toggle_like', to: 'puns#toggle_like', as: 'toggle_like'
  match '/:id/toggle_follow', to: 'boards#toggle_follow', as: 'toggle_follow'

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
  root :to => 'homes#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
