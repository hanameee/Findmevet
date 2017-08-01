class CreateVets < ActiveRecord::Migration[5.0]
  def change
    create_table :vets do |t|
      t.string :vtitle
      t.string :address
      t.string :telephone
      t.string :description
      t.boolean :hour
      t.boolean :hotel
      t.boolean :beauty
      t.boolean :supply
      t.string :homepage

      t.timestamps
    end
  end
end
