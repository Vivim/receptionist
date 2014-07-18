class AddIndexToCompanies < ActiveRecord::Migration
  def change
		add_index :companies, :building_id, unique: true
		add_index :companies, :user_id, unique: true
  end
end
