class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.integer :unit_module_id
      t.string :user_id
      t.integer :status_id

      t.timestamps
    end
  end
end
