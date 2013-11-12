TomAndJensWedding::Application.routes.draw do
  resources :attendings


  get "static_pages/index"

  get "static_pages/venue"

  get "static_pages/getting_there"

  get "static_pages/barcelona"

  resources :menus


  resources :rsvps


  authenticated :user do
    root :to => 'static_pages#index'
  end
  root :to => "static_pages#index"
  devise_for :users
  resources :users
  
  match '/contact-us', to: 'contact_us#contacts#new'
  match '/home', to: 'static_pages#index'
  match '/rsvp', to: 'attendings#new'
  match '/venue', to: 'static_pages#venue'
  match '/gettingthere', to: 'static_pages#getting_there'
  match '/barcelona', to: 'static_pages#barcelona'
  
end