Kijovo::Application.routes.draw do
    root "welcome#index"
    resources :settings
    resources :timecard
    resources :products
    resources :admin 
end