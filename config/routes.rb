Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  get '/top' => 'homes#top'
  get 'lists/:id' => 'lists#show', as: 'list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
end
