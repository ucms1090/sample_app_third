Rails.application.routes.draw do
  # get 'member/new'
  # get 'member/index'
  # get 'member/show'
  # get 'member/edit'
  
  # get 'lists/new'
  # post 'lists'=>'lists#create'
  # get 'lists'=>'lists#index'
  # get 'lists/:id'=>'lists#show', as: 'listid'
  # get 'lists/:id/edit'=>'lists#edit', as: 'edit_listid'
  # patch 'lists/:id'=>'lists#update',as: 'update_listid'
  # delete 'lists/:id'=>'lists#destroy', as: 'destroy_listid'
  root to: 'homes#about'
  get 'top'=>'homes#top'
  get 'homes/about'
  
  resources :lists
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
