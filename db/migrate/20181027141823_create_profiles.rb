class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.integer :total_units
      t.integer :mobile_number
      t.string :region
      t.string :province
      t.string :city

      t.timestamps
    end
  end
end
