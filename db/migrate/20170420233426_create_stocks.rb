class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :ticker, null: false, unique: true
      t.string :company_name, null: false
      t.string :exchange, null: false

      t.timestamps
    end
  end
end
