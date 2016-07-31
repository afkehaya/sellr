class AddSaleCountToListings < ActiveRecord::Migration
  def change
    add_column :listings, :sale_count, :integer, default: 0
  end
end
