class PortfoliosController < ApplicationController
  helper_method :portfolio

  def show
     @decorated_positions = PositionDecorator.decorate_collection(portfolio.positions)
  end

  private

  attr_reader :portfolio

  def portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
