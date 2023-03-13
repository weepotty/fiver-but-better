class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.integer :final_price, null: false
      t.text :description, null: false
      t.integer :final_delivery_time, null: false
      t.string :status, null: false

      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
