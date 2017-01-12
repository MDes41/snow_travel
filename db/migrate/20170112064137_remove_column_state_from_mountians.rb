class RemoveColumnStateFromMountians < ActiveRecord::Migration[5.0]
  def change
    remove_column :mountains, :state, :string
  end
end
