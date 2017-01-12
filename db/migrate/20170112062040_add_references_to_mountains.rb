class AddReferencesToMountains < ActiveRecord::Migration[5.0]
  def change
    add_reference :mountains, :state, foreign_key: true
  end
end
