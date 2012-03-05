class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :estate_id
      t.integer :name
      t.string :code
      t.string :area
      t.string :type_of_plant
      t.string :year_of_plant
      t.string :spacing
      t.timestamps
    end
  end
end
