class AddModuleTypeToUnitModule < ActiveRecord::Migration[5.2]
  def change
    add_column :unit_modules, :module_type, :string
  end
end
