class AddUniqeIndexToStocks < ActiveRecord::Migration[5.0]
  def change
    add_index :stocks, :ticker, unique: true
    add_index :users, :email, unique: true
  end
end
