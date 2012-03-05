class CreateYields < ActiveRecord::Migration
  def change
    create_table :yields do |t|
      t.integer :section_id
      t.integer :proposed # in Kgs
      t.integer :actual #in Kgs
      t.string :year
      t.timestamps
    end
  end
end
