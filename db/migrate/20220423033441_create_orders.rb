class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.string :total_price
      t.string :payment_status
      t.string :customer_id, foreign_key: true


      t.timestamps
    end
  end
end
