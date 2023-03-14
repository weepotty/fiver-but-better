class ChangeDefaultOfOffers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :offers, :status, "pending"
  end
end
