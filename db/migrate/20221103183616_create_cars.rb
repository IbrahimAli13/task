class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.string :car_type
      t.string :model

      t.timestamps
    end
  end
end
