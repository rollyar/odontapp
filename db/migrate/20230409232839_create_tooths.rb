class CreateTooths < ActiveRecord::Migration[7.0]
  def change
    create_table :tooths do |t|
      t.integer :position
      t.integer :tooth_type
      t.integer :number
      t.references :odontogram, null: false, foreign_key: true

      t.timestamps
    end
  end
end
