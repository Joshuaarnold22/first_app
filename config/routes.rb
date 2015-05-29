Bloccit::Application.routes.draw do

  devise_for :users
  
  resources :questions

  resources :advertisements

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, except: [:index] do
      resources :summary, only: [:new, :create, :show]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
