Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  root to: 'blogs#index'
  get 'blogs/index'
  get '/blogs', to: 'blogs#index'
  get '/stocks', to: 'stocks#index'
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
