GCIReviews::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :account do
    resources :gci_reviews_apis
    resources :gci_reviews_api_color_schemes
  end

  root 'static_pages#index'

  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

  get 'sign-in' => 'session#new', as: 'sign_in'
  post 'sign-in' => 'session#create', as: 'sign_in_create'
  delete 'sign-out' => 'session#destroy', as: 'sign_out'
  get 'sign-up' => 'static_pages#sign_up', as: 'sign_up'
  post 'sign-up' => 'static_pages#sign_up_create', as: 'sign_up_create'

  get 'account' => 'session#index'

  get 'reviews/:api' => 'gci_reviews#load', :defaults => { :format => :js }, as: 'gci_reviews'
  get 'reviews/:api/box' => 'gci_reviews#box', :defaults => { :format => :html }, as: 'gci_reviews_box'
  get 'reviews/:api/list' => 'gci_reviews#list', :defaults => { :format => :json }, as: 'gci_reviews_list'
  post 'reviews/:api/new' => 'gci_reviews#new', :defaults => { :format => :json }, as: 'gci_reviews_new'
  match 'reviews/:api/new', to: 'gci_reviews#set_options', via: :options

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
