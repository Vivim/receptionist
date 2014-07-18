class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :building_id
      t.integer :user_id

      t.timestamps
    end
  end
end
