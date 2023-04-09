class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :birth_date
      t.string :sex
      t.string :phone_number
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
