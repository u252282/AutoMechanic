Rails.application.routes.draw do

  root "jobs#index"
  # Routes for the Vehicle resource:
  # CREATE
  get "/vehicles/new", :controller => "vehicles", :action => "new"
  post "/create_vehicle", :controller => "vehicles", :action => "create"

  # READ
  get "/vehicles", :controller => "vehicles", :action => "index"
  get "/vehicles/:id", :controller => "vehicles", :action => "show"

  # UPDATE
  get "/vehicles/:id/edit", :controller => "vehicles", :action => "edit"
  post "/update_vehicle/:id", :controller => "vehicles", :action => "update"

  # DELETE
  get "/delete_vehicle/:id", :controller => "vehicles", :action => "destroy"
  #------------------------------

  # Routes for the Garage resource:
  # CREATE
  get "/garages/new", :controller => "garages", :action => "new"
  post "/create_garage", :controller => "garages", :action => "create"

  # READ
  get "/garages", :controller => "garages", :action => "index"
  get "/garages/:id", :controller => "garages", :action => "show"

  # UPDATE
  get "/garages/:id/edit", :controller => "garages", :action => "edit"
  post "/update_garage/:id", :controller => "garages", :action => "update"

  # DELETE
  get "/delete_garage/:id", :controller => "garages", :action => "destroy"
  #------------------------------

  # Routes for the Job resource:
  # CREATE
  get "/jobs/new", :controller => "jobs", :action => "new"
  post "/create_job", :controller => "jobs", :action => "create"
  #Book
  get "/jobs/book", :controller => "jobs", :action => "book"
  post "/book_job", :controller => "jobs", :action => "booking"
  #start
  get "/jobs/start/:id", :controller => "jobs", :action => "start"
  #complete
  get "/jobs/complete/:id", :controller => "jobs", :action => "complete"
  # READ
  get "/jobs", :controller => "jobs", :action => "index"
  get "/jobs/:id", :controller => "jobs", :action => "show"

  # UPDATE
  get "/jobs/:id/edit", :controller => "jobs", :action => "edit"
  post "/update_job/:id", :controller => "jobs", :action => "update"

  # DELETE
  get "/delete_job/:id", :controller => "jobs", :action => "destroy"
  #------------------------------

  # Routes for the Timeslot resource:
  # CREATE
  get "/timeslots/new", :controller => "timeslots", :action => "new"
  post "/create_timeslot", :controller => "timeslots", :action => "create"

  # READ
  get "/timeslots", :controller => "timeslots", :action => "index"
  get "/timeslots/:id", :controller => "timeslots", :action => "show"

  # UPDATE
  get "/timeslots/:id/edit", :controller => "timeslots", :action => "edit"
  post "/update_timeslot/:id", :controller => "timeslots", :action => "update"

  # DELETE
  get "/delete_timeslot/:id", :controller => "timeslots", :action => "destroy"
  #------------------------------

  # Routes for the Feed resource:
  # CREATE
  get "/feeds/new", :controller => "feeds", :action => "new"
  post "/create_feed", :controller => "feeds", :action => "create"

  # READ
  get "/feeds", :controller => "feeds", :action => "index"
  get "/feeds", :controller => "feeds", :action => "show"

  # UPDATE
  get "/feeds/:id/edit", :controller => "feeds", :action => "edit"
  post "/update_feed/:id", :controller => "feeds", :action => "update"

  # DELETE
  get "/delete_feed/:id", :controller => "feeds", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Job_type resource:
  # CREATE
  get "/job_types/new", :controller => "job_types", :action => "new"
  post "/create_job_type", :controller => "job_types", :action => "create"

  # READ
  get "/job_types", :controller => "job_types", :action => "index"
  get "/job_types/:id", :controller => "job_types", :action => "show"

  # UPDATE
  get "/job_types/:id/edit", :controller => "job_types", :action => "edit"
  post "/update_job_type/:id", :controller => "job_types", :action => "update"

  # DELETE
  get "/delete_job_type/:id", :controller => "job_types", :action => "destroy"
  #------------------------------

  # Routes for the Job_list resource:
  # CREATE
  get "/job_lists/new", :controller => "job_lists", :action => "new"
  post "/create_job_list", :controller => "job_lists", :action => "create"

  # READ
  get "/job_lists", :controller => "job_lists", :action => "index"
  get "/job_lists/:id", :controller => "job_lists", :action => "show"

  # UPDATE
  get "/job_lists/:id/edit", :controller => "job_lists", :action => "edit"
  post "/update_job_list/:id", :controller => "job_lists", :action => "update"

  # DELETE
  get "/delete_job_list/:id", :controller => "job_lists", :action => "destroy"
  #------------------------------

  # Routes for the Hours_of_operation resource:
  # CREATE
  get "/hours_of_operations/new", :controller => "hours_of_operations", :action => "new"
  post "/create_hours_of_operation", :controller => "hours_of_operations", :action => "create"

  # READ
  get "/hours_of_operations", :controller => "hours_of_operations", :action => "index"
  get "/hours_of_operations/:id", :controller => "hours_of_operations", :action => "show"

  # UPDATE
  get "/hours_of_operations/:id/edit", :controller => "hours_of_operations", :action => "edit"
  post "/update_hours_of_operation/:id", :controller => "hours_of_operations", :action => "update"

  # DELETE
  get "/delete_hours_of_operation/:id", :controller => "hours_of_operations", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
