class AddDetilsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :birth_date, :date
    add_column :users, :phone_number, :string
    add_column :users, :postcode, :string
    add_column :users, :address, :string
    add_column :users, :address_detail, :string
  end
end
