class Review < ActiveRecord::Base
	belongs_to :seller
	belongs_to :deal
	belongs_to :user
end
