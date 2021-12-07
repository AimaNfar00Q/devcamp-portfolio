Rails.application.routes.draw do
  resources :portfolios

  #customizing the routes vid 65
  root to: 'pages#home'   #for home/main page

  #get 'pages/about'  
  get 'about-me' , to:'pages#about'  #u can customize the get part with any name

  get 'contact' , to:'pages#contact'
 

  resources :blogs


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
