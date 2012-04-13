ShopifyOauth2Example::Application.routes.draw do
  root to: "home#index"
  
  match "/auth/:provider/callback" => "shopify/sessions#create", :as => :authenticate
  
  namespace :shopify do
    resource :session, :only => [:new, :create, :destroy]
  end
end
