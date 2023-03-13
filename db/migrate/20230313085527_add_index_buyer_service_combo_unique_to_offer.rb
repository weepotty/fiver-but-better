class AddIndexBuyerServiceComboUniqueToOffer < ActiveRecord::Migration[7.0]
  def change
    add_index :offers, [:buyer_id, :service_id], unique: true
  end
end
