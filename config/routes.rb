Rails.application.routes.draw do
  root to: 'welcome#index'
  devise_for :users, :controllers => {:register => "register"}
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end 
  devise_scope :user do
    get 'register', to: 'devise/registrations#new'
  end 
  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end
end