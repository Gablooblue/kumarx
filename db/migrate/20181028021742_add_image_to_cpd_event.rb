class AddImageToCpdEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :cpd_events, :image, :string
  end
end
