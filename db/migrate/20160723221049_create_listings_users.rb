class CreateListingsUsers < ActiveRecord::Migration
  def change
    create_table :listings_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :listing, index: true, foreign_key: true
      t.string :role

      t.timestamps null: false
    end
  end
end
