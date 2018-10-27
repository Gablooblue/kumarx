class CreateCpdEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :cpd_events do |t|
      t.integer :cpdevent_id
      t.string :name
      t.datetime :date
      t.text :description

      t.timestamps
    end
  end
end
