class Position < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :stock

  def market_value
    stock.latest_price * shares_held
  end
end
