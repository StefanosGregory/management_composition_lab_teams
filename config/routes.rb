Rails.application.routes.draw do
  root to: 'welcome#index'
end

Rails.application.routes.draw do
  devise_for :users, :controllers => {:register => "register"}
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end 
end 


Rails.application.routes.draw do
  devise_scope :user do
    get 'register', to: 'devise/registrations#new'
  end 
end 