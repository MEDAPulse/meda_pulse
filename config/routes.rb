Rails.application.routes.draw do
  root to: 'home#index'
  get 'dashboard', to: 'home#dashboard', as: 'dashboard'
  resource :session, only: [:create, :destroy]
  resources :clients, only: [:create, :destroy, :show, :update]
  resources :goals, only: [:create, :destroy, :update]
  resources :action_plans, only: [:create, :destroy, :update]
  resources :steps, only: [:create, :destroy, :update]
  resources :text_messages, only: [:create]
  post 'text_messages/incoming', to: 'text_messages#incoming', as: 'incoming_text'
  get 'clients/:client_id/steps', to: 'clients#steps'
end