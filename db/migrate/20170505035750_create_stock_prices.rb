class CreateStockPrices < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_prices do |t|
      t.integer :stock_id, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
