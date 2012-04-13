class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_shop, :shopify_session

  private

  def current_shop
    @current_shop ||= Shop.find(session[:shop_id]) if session[:shop_id].present?
  end
  
  def shopify_session
    unless current_shop.nil?
      api_key = Rails.configuration.shopify_api_key
      token   = current_shop.token
      domain  = current_shop.domain
      
      ShopifyAPI::Base.site = "https://#{api_key}:#{token}@#{domain}/admin"
    end
    
    yield if block_given?
    
    ensure ShopifyAPI::Base.site = nil
  end
end
