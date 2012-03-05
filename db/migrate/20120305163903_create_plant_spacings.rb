class CreatePlantSpacings < ActiveRecord::Migration
  def change
    create_table :plant_spacings do |t|
      t.string :spacing
      t.integer :no_of_plants
      t.timestamps
    end
  end
end
