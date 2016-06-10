class Category < ActiveRecord::Base
	has_many :sellers through :sub_category
	has_many :deals
end
