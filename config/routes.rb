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
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
  end

  namespace :admin do
    resources :types, only: [:create, :edit, :update, :destroy, :index]
  end
  #アドミンの
  #検索用
  #問合せ用
  namespace :admin do
    get 'procedures/edit'
    get 'procedures/create'
    get 'procedures/update'
  end
  
  namespace :admin do
    get 'materials/edit'
    get 'materials/create'
    get 'materials/update'
  end
  
  namespace :public do
    get 'procedures/post'
    get 'procedures/create'
    get 'procedures/edit'
  end

  namespace :public do
    get 'materials/post'
    get 'materials/create'
    get 'materials/edit'
  end
  namespace :public do
    resources :comments, only: [:post, :new]
    #get 'comments/post'
    #get 'comments/new'
  end
  namespace :public do
    resources :clothes, only: [:index, :show, :new, :create, :edit, :update, :destroy]
     resources :bookmarks, only: [:create, :destroy, :index]
       #collection do
        get :bookmarks
       #end
    #get 'clothes/index'
    #get 'clothes/show'
    #get 'clothes/new'
    #get 'clothes/edit'
    #get 'clothes/destroy'
  end

  namespace :public do
   resources :users, only:[:index, :show, :edit, :update]
   get 'users/list' => "uses#list"
  end

  namespace :public do
    resources :inquiries, only:[:new, :create]
  end





end
