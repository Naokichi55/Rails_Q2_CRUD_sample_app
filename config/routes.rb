Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #一覧表示画面へのルーティング
  get '/users', to: 'users#index'
  #新規投稿画面へのルーティング
  get '/users/new', to: 'users#new'
  #新規投稿に関するルーティング
  post '/users', to: 'users#create'
  # 編集画面に遷移するルーティング
  get '/users/:id/edit', to: 'users#edit'
  # データ更新に関するルーティンング
  patch '/users/:id', to: 'users#update'
  # 削除に関するルーティング
  delete '/users/:id', to: 'users#destroy'
  
end
