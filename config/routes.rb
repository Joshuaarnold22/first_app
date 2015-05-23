Bloccit::Application.routes.draw do

  get 'users/index'

  get 'users/show'

  get 'users/edit'

  get 'users/new'

  devise_for :users
  resources :users, only: [:update]

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts do
    resources :summaries, only: [:new, :create, :show]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
