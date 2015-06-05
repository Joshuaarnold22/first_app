Bloccit::Application.routes.draw do

  devise_for :users
  resources :users, only: [:update]

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do #Note the only: [] in the top-level post resources line. This is because we don't want to create any /posts/:id routes, just posts/:post_id/comments.?
    resources :comments, only: [:create, :destroy]
  end

  post '/up-vote' => 'votes#up_vote', as: :up_vote
  post '/down-vote' => 'votes#down_vote', as: :down_vote

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
