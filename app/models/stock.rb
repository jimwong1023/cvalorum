class Stock < ActiveRecord::Base
  has_many :stock_prices

  def latest_price
    stock_prices.last.price
  end
end
