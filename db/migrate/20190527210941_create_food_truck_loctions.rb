class CreateFoodTruckLoctions < ActiveRecord::Migration[5.2]
  def change
    create_table :food_truck_loctions do |t|
      t.references :foodtruck, foreign_key: true
      t.string :address
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
