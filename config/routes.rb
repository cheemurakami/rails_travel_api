Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  mount_devise_token_auth_for 'User', at: 'auth'
 
  namespace :api do
    namespace :v1 do
      resources :reviews
    end
  end

  resources :reviews
  root to: 'api/v1/reviews#index'
end
