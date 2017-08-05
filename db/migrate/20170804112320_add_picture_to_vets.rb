class AddPictureToVets < ActiveRecord::Migration[5.0]
  def change
    add_column :vets, :picture, :string
  end
end
