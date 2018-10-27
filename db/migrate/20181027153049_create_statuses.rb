class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.integer :enrollment_id
      t.string :name

      t.timestamps
    end
  end
end
