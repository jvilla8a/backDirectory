class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :likes, array: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
