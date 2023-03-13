class RenameUserId < ActiveRecord::Migration[7.0]
  def change
    rename_column :services, :user_id, :seller_id
    rename_column :offers, :user_id, :buyer_id
  end
end
