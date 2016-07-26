class AddMerchantToListingsUsers < ActiveRecord::Migration
  def change
    add_column :listings_users, :merchant_id, :integer
  end
end
