California::Application.routes.draw do
  resources :contacts
  
  match '/work', to: 'application#work', as: :work
  root to: 'application#index'
end
