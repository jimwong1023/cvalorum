class PortfoliosController < ApplicationController
  helper_method :portfolio

  def show
     @positions = PositionDecorator.decorate_collection(portfolio.positions)
  end

  private

  attr_reader :portfolio

  def portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
