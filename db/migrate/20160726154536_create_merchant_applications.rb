class CreateMerchantApplications < ActiveRecord::Migration
  def change
    create_table :merchant_applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :phone_number
      t.string :website

      t.timestamps null: false
    end
  end
end
