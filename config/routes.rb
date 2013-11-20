Optin::Application.routes.draw do

  root 'companies#index'

  # Routes for the Application resource:
  # CREATE
  get '/applications/new', controller: 'applications', action: 'new', as: 'new_application'
  post '/applications', controller: 'applications', action: 'create', as: 'applications'

  # READ
  get '/applications', controller: 'applications', action: 'index'
  get '/applications/:id', controller: 'applications', action: 'show', as: 'application'

  # UPDATE
  get '/applications/:id/edit', controller: 'applications', action: 'edit', as: 'edit_application'
  patch '/applications/:id', controller: 'applications', action: 'update'

  # DELETE
  delete '/applications/:id', controller: 'applications', action: 'destroy'
  #------------------------------

  # Routes for the Job resource:
  # CREATE
  get '/jobs/new', controller: 'jobs', action: 'new', as: 'new_job'
  post '/jobs', controller: 'jobs', action: 'create', as: 'jobs'

  # READ
  get '/jobs', controller: 'jobs', action: 'index'
  get '/jobs/:id', controller: 'jobs', action: 'show', as: 'job'

  # UPDATE
  get '/jobs/:id/edit', controller: 'jobs', action: 'edit', as: 'edit_job'
  patch '/jobs/:id', controller: 'jobs', action: 'update'

  # DELETE
  delete '/jobs/:id', controller: 'jobs', action: 'destroy'
  #------------------------------

  # Routes for the Mom resource:
  # CREATE
  get '/moms/new', controller: 'moms', action: 'new', as: 'new_mom'
  post '/moms', controller: 'moms', action: 'create', as: 'moms'

  # READ
  get '/moms', controller: 'moms', action: 'index'
  get '/moms/:id', controller: 'moms', action: 'show', as: 'mom'

  # UPDATE
  get '/moms/:id/edit', controller: 'moms', action: 'edit', as: 'edit_mom'
  patch '/moms/:id', controller: 'moms', action: 'update'

  # DELETE
  delete '/moms/:id', controller: 'moms', action: 'destroy'
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get '/companies/new', controller: 'companies', action: 'new', as: 'new_company'
  post '/companies', controller: 'companies', action: 'create', as: 'companies'

  # READ
  get '/companies', controller: 'companies', action: 'index'
  get '/companies/:id', controller: 'companies', action: 'show', as: 'company'

  # UPDATE
  get '/companies/:id/edit', controller: 'companies', action: 'edit', as: 'edit_company'
  patch '/companies/:id', controller: 'companies', action: 'update'

  # DELETE
  delete '/companies/:id', controller: 'companies', action: 'destroy'
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
