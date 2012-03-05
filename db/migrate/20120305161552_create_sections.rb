class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :estate_id
      t.string :plant_spacing_id
      t.integer :name
      t.string :code
      t.string :area      
      t.string :year_of_plant      
      t.timestamps
    end
  end
end
