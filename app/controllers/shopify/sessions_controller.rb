class Shopify::SessionsController < ApplicationController
  def create
    # get the omniauth request
    auth = request.env["omniauth.auth"]
    
    # find or create the shop
    shop = Shop.find_or_create_by_provider_and_token(
      auth["provider"],
      auth["credentials"].token
    )
    
    # ensure the shop's domain is stored in the local database
    shop.update_attributes(:domain => params[:shop]) if shop.domain.empty?
    
    # store the shop's identifier in the session
    session[:shop_id] = shop.to_param
    
    # redirect to the root path
    redirect_to root_path, :notice => "Signed in."
  end

  def destroy
    # reset the session - safer than just deleting
    # :shop_id, as it also prevents session hijacking
    reset_session
    
    # redirect to the root path
    redirect_to root_path, :notice => "Signed out."
  end
end
