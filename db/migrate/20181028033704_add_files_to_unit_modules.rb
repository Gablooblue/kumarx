class AddFilesToUnitModules < ActiveRecord::Migration[5.2]
  def change
    add_column :unit_modules, :files, :string
  end
end
