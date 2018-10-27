class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.integer :cpdevent_id
      t.integer :announcement_id
      t.integer :user_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
