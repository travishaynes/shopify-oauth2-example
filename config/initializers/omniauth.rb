Rails.application.config.middleware.use OmniAuth::Builder do
  
  provider :shopify, 
    Rails.configuration.shopify_api_key,
    Rails.configuration.shopify_shared_secret,
    
    :scope => 'read_products',
    
    :setup => lambda { |env|
      params = Rack::Utils.parse_query(env['QUERY_STRING'])
      env['omniauth.strategy'].options[:client_options][:site] = "https://#{params['shop']}"
    }
end
