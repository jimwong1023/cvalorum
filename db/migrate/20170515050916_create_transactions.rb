class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :portfolio_id, null: false
      t.integer :stock_id, null: false
      t.integer :number_of_shares, null: false
      t.integer :price_per_share_in_cents, null: false

      t.timestamps
    end
  end
end
