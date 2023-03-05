Rails.application.routes.draw do
  namespace :admin do
    get 'clothes/show'
    get 'clothes/index'
  end
  namespace :admin do
    get 'members/show'
    get 'members/index'
    get 'members/exit'
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
end
