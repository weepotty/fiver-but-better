class ChangePriceOfServiceToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :services, :price, :integer
  end
end
