class AddIndexToBuildings < ActiveRecord::Migration
  def change
  	add_index :buildings, :user_id, unique: true
  end
end
