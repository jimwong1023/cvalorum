class Position < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :stock

  def latest_stock_price
    Money.new(latest_stock_price_in_cents, 'USD')
  end

  def market_value
    Money.new(market_value_in_cents, 'USD')
  end

  def total_gain_or_loss
    Money.new(total_gain_or_loss_in_cents, 'USD')
  end

  def percentage_gain_or_loss
    ((total_gain_or_loss_in_cents.to_f / cost_value_in_cents.to_f) * 100).round(2)
  end

  def positive_gain?
    total_gain_or_loss_in_cents > 0
  end

  def cost_value
    Money.new(cost_value_in_cents, 'USD')
  end

  private

  def total_gain_or_loss_in_cents
    market_value_in_cents - cost_value_in_cents
  end

  def market_value_in_cents
    latest_stock_price_in_cents * shares_held
  end

  def latest_stock_price_in_cents
    @latest_stock_price_in_cents ||= stock.latest_price_in_cents
  end
end
