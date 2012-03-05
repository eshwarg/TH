class CreatePrunes < ActiveRecord::Migration
  def change
    create_table :prunes do |t|
      t.string :name
      t.timestamps
    end
  end
end
