class AddCategoryToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :category, :string, null: false
  end
end
