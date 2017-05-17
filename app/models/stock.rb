class Stock < ActiveRecord::Base
  has_many :stock_prices

  def latest_price_in_cents
    stock_prices.last.price_in_cents
  end
end
