CourseworkApp::Application.routes.draw do
  #get "pages/News"
match '/News', :to => 'pages#News'

  #get "pages/FAQ"
 match '/FAQ', :to => 'pages#FAQ'

  #get "pages/Vacancies"
match '/Vacancies', :to => 'pages#Vacancies'

  #get "pages/Useful_Links"
  match '/Useful Links', :to => 'pages#Usefullinks'

  #get "pages/Terms_and_conditions"
  match '/Terms and conditions', :to => 'pages#Terms'

  #get "sessions/new"

  #get "users/new"
resources :users
resources :sessions, :only => [:new, :create, :destroy]

   match '/signup', :to => 'users#new'
   match '/signin', :to => 'sessions#new'
   match '/signout', :to => 'sessions#destroy'

    match '/enquiry_service', :to => 'pages#enquiry_service'
  #get "pages/enquiry_service"

  #get "pages/services_support"
    match '/services_support', :to => 'pages#services_support'

  #get "pages/information_advice"
    match '/information_advice', :to => 'pages#information_advice'

  #get "pages/recording_tools"
    match '/recording_tools', :to => 'pages#recording_tools'

  #get "pages/submit_your_sightings"
    match '/submit_your_sightings', :to => 'pages#submit_your_sightings'

  #get "pages/about"
    match '/about', :to => 'pages#about'
  
  #get "pages/home"

  #get "pages/contact"
    match '/contact', :to => 'pages#contact'
    match '/help', :to => 'pages#help'
    root :to => 'pages#home'


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
  # match ':controller(/:action(/:id(.:format)))'
end
