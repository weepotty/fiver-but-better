class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.decimal :price, null: false
      t.integer :delivery_time, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
