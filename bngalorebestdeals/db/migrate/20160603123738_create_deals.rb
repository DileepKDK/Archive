class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
    	t.string :name
    	t.string :description
    	t.string :coupon
    	t.date :start_date
    	t.date :end_date
    	
    	

      t.timestamps null: false
    end
  end
end
