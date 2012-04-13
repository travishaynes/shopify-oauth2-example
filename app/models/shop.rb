class Shop < ActiveRecord::Base
  attr_accessible :provider, :domain, :token
  
  validates_uniqueness_of :token, :on => :create
  
  validates_presence_of :provider, :token
end
