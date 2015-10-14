Rails.application.routes.draw do

  devise_for :hars#,  controllers: {:new_har_session => "devise/sessions#new"}
  

  resources :rests
  
  devise_for :employes, :controllers => { :new_employe_registration => "employes/registrations#new" }

    get 'index', to: 'rests#index', as: 'index'
    get 'manager_index', to: 'rests#manager_index', as: 'manager_index'

    get "hars/dashboard"
    #get 'hars/:id' => 'hars#approve_leave', as: 'approve_leave'
    #get 'harss/:id' => 'hars#disapprove_leave', as: 'disapprove_leave'
    get 'hars/:id' => 'hars#approve', as: :approve
    get 'harss/:id' => 'hars#disapprove', as: :disapprove

    get "employes/dashboard"
    #get "hars/approve" => "hars#approve"



  
#  devise_for :employes, :controllers => { :registrations => "employe/registrations" }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'rests#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
