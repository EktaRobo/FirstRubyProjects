class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :Grocer, foreign_key: true
      t.references :Client, foreign_key: true
      t.references :Order_status, foreign_key: true

      t.timestamps
    end
  end
end
