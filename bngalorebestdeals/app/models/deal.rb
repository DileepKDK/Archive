class Deal < ActiveRecord::Base
	belongs_to :seller
	belongs_to :categoty
	has_many :reviews
	belongs_to :location
	has_many :picture
end
