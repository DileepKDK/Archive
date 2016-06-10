class Location < ActiveRecord::Base
	has_many :deals
	has_many :sellers
end
