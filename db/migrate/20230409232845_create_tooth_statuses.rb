class CreateToothStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :tooth_statuses do |t|
      t.boolean :current_treatment
      t.text :treatment_history
      t.text :observations
      t.references :tooth, null: false, foreign_key: true

      t.timestamps
    end
  end
end
