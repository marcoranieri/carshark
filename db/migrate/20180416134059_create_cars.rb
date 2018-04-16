class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :year
      t.integer :seats
      t.integer :rate
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
