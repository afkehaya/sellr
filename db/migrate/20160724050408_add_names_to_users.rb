class AddNamesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :website, :string
    add_column :users, :phone_number, :string
    add_column :users, :bio, :string
  end
end
