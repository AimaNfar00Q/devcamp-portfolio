Rails.application.routes.draw do
  resources :portfolios, except: [:show]     #vid 66 customroute for show
    get 'portfolio/:id' , to: 'portfolios#show', as:'portfolio_show'

    get 'angular_items' , to: 'portfolios#angular'  #path of custom scope angular

  #customizing the routes vid 65
  root to: 'pages#home'   #for home/main page

  #get 'pages/about'  
  get 'about-me' , to:'pages#about'  #u can customize the get part with any name

  get 'contact' , to:'pages#contact'
 

  resources :blogs


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
