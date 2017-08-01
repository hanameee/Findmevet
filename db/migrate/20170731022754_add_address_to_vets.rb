class AddAddressToVets < ActiveRecord::Migration[5.0]
  def change
    add_column :vets, :postcode, :string
    add_column :vets, :address_detail, :string
  end
end
