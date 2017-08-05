class CreateExaminations < ActiveRecord::Migration[5.0]
  def change
    create_table :examinations do |t|
      t.references :user, foreign_key: true
      t.string :hname
      t.string :symptom
      t.date :exdate

      t.timestamps
    end
    add_index :examinations, [:user_id, :created_at]
  end
end
