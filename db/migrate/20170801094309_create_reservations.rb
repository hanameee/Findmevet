class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :user
      t.references :vet
      t.datetime :reserved_date
      t.text :symptom

      t.timestamps
    end
  end
end
