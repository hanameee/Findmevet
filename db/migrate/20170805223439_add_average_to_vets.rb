class AddAverageToVets < ActiveRecord::Migration[5.0]
  def change
    add_column :vets, :average, :float
  end
end
