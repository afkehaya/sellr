class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.float :commission
      t.float :value
      t.boolean :is_active
      t.boolean :requires_application
      t.text :description
      t.boolean :is_sponsored
      t.string :product_url

      t.timestamps null: false
    end
  end
end
