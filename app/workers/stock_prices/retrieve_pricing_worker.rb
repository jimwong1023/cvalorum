module StockPrices
  class RetrievePricingWorker
    include Sidekiq::Worker

    sidekiq_options retry: false, unique: true

    def perform
      Stock.find_each do |stock|
        StockPrices::Service.retrieve_pricing(stock)
        sleep(1.minute)
      end
    end
  end
end
