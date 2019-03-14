Rails.application.routes.draw do
  resources :gears
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :events
  root to: 'events#index'
  get 'historique', :to => 'events#historique'
end
