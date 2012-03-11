class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :estate_id
      t.integer :plant_spacing_id
      t.string :name
      t.string :code
      t.float :area      
      t.string :year_of_plant
      t.timestamps
    end
  end
end
