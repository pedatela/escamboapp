Rails.application.routes.draw do


  namespace :backoffice do
    resources :send_mail, only: [:edit, :create]
    resources :categories, except:[:show, :destroy]
    resources :admins, except:[:show]
    get 'dashboard', to: 'dashboard#index'
  end

  namespace :site do
  get 'home', to: 'home#index'
  end

  get 'backoffice', to: 'backoffice/dashboard#index'


  devise_for :admins, :skip => [:registration]
  devise_for :members

  root 'site/home#index'

end
