class GoogleFinanceApiInteractor
  def initialize(stock)
    @stock = stock
  end

  def execute
    uri = "http://finance.google.com/finance/info?client=ig&q=#{stock.exchange}%3A#{stock.ticker}"
    response = HTTParty.get(uri)
    response.delete!("// ")
    response.delete!("\n")
    eval(response).first
  end

  private
  attr_reader :stock
end
