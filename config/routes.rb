Rails.application.routes.draw do
  get 'password_resets/new'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users,  except: [:index, :show, :destroy, :create, :new, :edit] do
    collection do
      post 'login', to: 'authentication#authenticate', :as => "login"
      post 'signup', to: 'users#create', :as => "signup"
    end
    #/users/:confirm_tocken/confirm_email
    member do
    get '/confirm_email'=> 'users#confirm_email' 
    end
  end
  resources :password_resets, only: [:create, :update]
  namespace 'api' do
    resources :categories
    resources :books do
      resources :rates
      #/api/books/route_name
      collection do
        get :latest_books
        get :recommended_books
      end
      #/api/books/:id/route_name
      member do
        
      end
    end
   end 
end
