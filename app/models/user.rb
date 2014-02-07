class User < ActiveRecord::Base
	attr_accessible :gplus, :name , :image , :email
validates :name, :presence => true
validates :gplus, :uniqueness => true, :presence => true
end
