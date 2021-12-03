Rails.application.routes.draw do
  get 'p_ages/home'
  get 'p_ages/about'
  get 'p_ages/contact'
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
