class CreateMountains < ActiveRecord::Migration[5.0]
  def change
    create_table :mountains do |t|
      t.string :city
      t.string :state
      t.string :country
      t.string :lon
      t.string :lat

      t.timestamps
    end
  end
end
