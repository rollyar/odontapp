class CreateTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :treatments do |t|
      t.integer :treatment_type
      t.date :start_date
      t.date :end_date
      t.integer :duration
      t.references :tooth_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
