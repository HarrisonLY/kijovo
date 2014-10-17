Kijovo::Application.routes.draw do
    root "welcome#index"
    resources :products
end


    # get "products" => "products#index"
    # get "products/:id" => "products#show", as: "product"
    # get "products/:id/edit" => "products#edit", as: "edit_product"
    # patch "products/:id" => "products#update"