class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :description, null: false
      t.references :user, null: false, foreign_key: true
      t.integer :price_per_day, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
