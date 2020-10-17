class CreateNearstations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearstations do |t|
      t.string :route
      t.string :station
      t.integer :minutes_walk
      t.references :property, foreign_key: true
      t.timestamps
    end
  end
end
