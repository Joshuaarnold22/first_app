Bloccit::Application.routes.draw do

  resources :advertisements

  resources :posts

  get 'posts' => 'welcome#posts'

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
