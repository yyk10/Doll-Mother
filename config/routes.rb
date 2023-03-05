Rails.application.routes.draw do
  # 顧客用
# URL /users/sign_in ...
  devise_for :users, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
# 管理者用
# URL /admin/sign_in ...
  devise_for :admins, skip: [:registrations, :passwords],controllers: {
  sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "public/homes#top"
  get '/about' =>'public/homes#about', as: 'about'
  
  namespace :admin do
    root to: "homes#top"
  end
  namespace :admin do
     resources :clothes, only: [:index, :show, :edit, :create, :update, :destroy]
    #get 'clothes/show'
    #get 'clothes/index'
  end
  
  namespace :admin do
    resources :users, only:[:index, :show, :edit, :update]
  end
  
  namespace :admin do
    resources :genres, only: [:index, :create, :edit, :update]
  end
  
  namespace :admin do
    resources :types, only: [:index, :create, :edit, :update]
  end
  
  namespace :public do
    
    get 'comments/post'
    get 'comments/new'
  end
  namespace :public do
    get 'clothes/index'
    get 'clothes/show'
    get 'clothes/new'
    get 'clothes/exit'
    get 'clothes/destroy'
  end

end
