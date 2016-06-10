class Seller < ActiveRecord::Base
	has_many :deals
	has_many :reviews
	belongs_to :location
	has_many :attachements
end
