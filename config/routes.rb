Rails.application.routes.draw do
  get 'welcome/index'
  post 'welcome/index'
  root :to => redirect('welcome/index')
end
