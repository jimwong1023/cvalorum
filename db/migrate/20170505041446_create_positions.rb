class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.integer :portfolio_id, null: false
      t.integer :stock_id, null: false
      t.integer :shares_held, null: false
      t.timestamps
    end
  end
end
