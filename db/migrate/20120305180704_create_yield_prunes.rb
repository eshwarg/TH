class CreateYieldPrunes < ActiveRecord::Migration
  def change
    create_table :yield_prunes do |t|
      t.integer :yield_id
      t.integer :prune_id
      t.timestamps
    end
  end
end
