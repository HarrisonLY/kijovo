Kijovo::Application.routes.draw do
    root "welcome#index"
    resources :products
    resources :admin 
end