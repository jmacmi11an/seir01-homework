Rails.application.routes.draw do
  get 'products/index'
  get 'products/new'
  get 'products/edit'
  get 'products/show'
  get 'customers/index'
  get 'customers/new'
  get 'customers/edit'
  get 'customers/show'
  get 'orders/index'
  get 'orders/new'
  get 'orders/edit'
  get 'orders/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
