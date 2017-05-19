module StockPrices
  class Service
    def self.retrieve_pricing(stock)
      hash_response = GoogleFinanceApiInteractor.new(stock).execute
      price_in_cents = hash_response[:l].delete!(".").to_i
      StockPrice.create(stock: stock, price_in_cents: price_in_cents)
    end
  end
end
