class AddImageToUnitModules < ActiveRecord::Migration[5.2]
  def change
    add_column :unit_modules, :image, :string
  end
end
