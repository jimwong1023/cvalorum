module StockPrices
  class RetrievePricingWorker
    include Sidekiq::Worker

    sidekiq_options retry: false, unique: true

    def perform
    end
  end
end
