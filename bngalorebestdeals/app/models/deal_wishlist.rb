class DealWishlist < ActiveRecord::Base
	belongs_to :user
	belongs_to :deal
end
