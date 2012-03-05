class CreateSectionClones < ActiveRecord::Migration
  def change
    create_table :section_clones do |t|
      t.integer :section_id
      t.integer :clone_id
      t.timestamps
    end
  end
end
