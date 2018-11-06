Rails.application.routes.draw do
  resources :twits do
    collection do
      post :confirm
    end
  end
  get    'twits/index'
  get    'home'           ,to: 'twits#home'
  get    '/twits/confirm'  ,to: 'twits#confirm'
  get    '/twits'          ,to: 'twits#index'
  post   '/twits'          ,to: 'twits#create'
  get    '/twits/new'      ,to: 'twits#new'
  get    '/twits/:id/edit' ,to: 'twits#edit'
  patch  '/twits/:id'      ,to: 'twits#update'
  delete '/twits/:id'      ,to: 'twits#destroy'
  resources :twits
end
