class Position < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :stock

  def market_value_in_cents
    stock.latest_price_in_cents * shares_held
  end

  def percentage_gain_or_loss
    ((total_gain_or_loss_in_cents.to_f / cost_value_in_cents.to_f) * 100).round(2)
  end

  def total_gain_or_loss_in_cents
    market_value_in_cents - cost_value_in_cents
  end
end
