Rails.application.routes.draw do
  get 'user/lookProfile'
  get 'user/lookHistory'
  get 'user/searchArtist'
  get 'user/logout'
  get 'user/deleteHistory'
  get 'welcome/index'
  get 'welcome/signin'
  get 'welcome/signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
