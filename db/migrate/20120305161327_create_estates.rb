class CreateEstates < ActiveRecord::Migration
  def change
    create_table :estates do |t|
      t.string :name
      t.timestamps
    end
  end
end
