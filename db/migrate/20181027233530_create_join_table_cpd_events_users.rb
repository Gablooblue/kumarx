class CreateJoinTableCpdEventsUsers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :cpd_events, :users do |t|
       t.index [:cpd_event_id, :user_id]
       t.index [:user_id, :cpd_event_id]
    end
  end
end
