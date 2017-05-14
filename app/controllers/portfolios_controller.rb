class PortfoliosController < ApplicationController
  helper_method :portfolio

  def show
  end

  private

  attr_reader :portfolio

  def portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
