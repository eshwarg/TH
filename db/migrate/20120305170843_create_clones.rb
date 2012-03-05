class CreateClones < ActiveRecord::Migration
  def change
    create_table :clones do |t|
      t.string :name
      t.timestamps
    end
  end
end
