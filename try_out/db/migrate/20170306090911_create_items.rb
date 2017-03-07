class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price_per_unit, precision: 12, scale: 3
      t.string :unit
      t.integer :units_in_stock
      t.references :grocer, foreign_key: true

      t.timestamps
    end
  end
end
