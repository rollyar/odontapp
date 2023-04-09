class CreateOdontograms < ActiveRecord::Migration[7.0]
  def change
    create_table :odontograms do |t|
      t.references :patient, null: false, foreign_key: true
      t.date :exam_date
      t.string :exam_type

      t.timestamps
    end
  end
end
