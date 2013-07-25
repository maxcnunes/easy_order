EasyOrder::Application.routes.draw do
  root 'menus#index'
  resources :menus, only: [:index] do
    collection do
      get :products_by_category
    end
  end
end
