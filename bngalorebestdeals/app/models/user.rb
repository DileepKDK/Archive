class User < ActiveRecord::Base
	has_many :deal_wishlists
	has_many :reviews 
	belongs_ta :attachement
end
