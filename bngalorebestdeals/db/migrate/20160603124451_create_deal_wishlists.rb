class CreateDealWishlists < ActiveRecord::Migration
  def change
    create_table :deal_wishlists do |t|

      t.timestamps null: false
    end
  end
end
