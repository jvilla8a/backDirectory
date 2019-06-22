class CreateMedics < ActiveRecord::Migration[5.2]
  def change
    create_table :medics do |t|
      t.string :name
      t.string :address
      t.string :phone, array: true
      t.json :coord
      t.json :price
      t.json :schedule
      t.integer :speciality, array:true
      t.string :email
      t.numeric :experience
      t.numeric :score
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
