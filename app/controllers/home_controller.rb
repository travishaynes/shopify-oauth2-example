class HomeController < ApplicationController
  def index
    if current_shop.nil?
      render 'welcome'
    else
      shopify_session { @products = ShopifyAPI::Product.find(:all, params: {limit: 5}) }
    end
  end
  
  def welcome
  end
end
