class CreatePluckingRounds < ActiveRecord::Migration
  def change
    create_table :plucking_rounds do |t|
      t.integer :section_id
      t.date :plucking_date
      t.integer :green_leaves_harvested
      t.integer :pluckers
      t.integer :area_covered
      t.timestamps
    end
  end
end
