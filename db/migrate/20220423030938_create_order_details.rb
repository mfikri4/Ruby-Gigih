class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.string :order_id, foreign_key: true
      t.string :menu_id, foreign_key: true
      t.string :price
      t.string :qty

      t.timestamps
    end
  end
end
