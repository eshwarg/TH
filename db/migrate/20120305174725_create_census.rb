class CreateCensus < ActiveRecord::Migration
  def change
    create_table :census do |t|
      t.string :section_id
      t.string :year
      t.integer :no_of_plants
      t.date :census_date
      t.timestamps
    end
  end
end
