class ChangePriceToPriceInCents < ActiveRecord::Migration[5.0]
  def change
    rename_column :stock_prices, :price, :price_in_cents
  end
end
