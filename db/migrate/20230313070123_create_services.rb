class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :delivery_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
