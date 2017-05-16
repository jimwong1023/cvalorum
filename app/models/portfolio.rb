class Portfolio < ActiveRecord::Base
  belongs_to :user
  has_many :positions
  has_many :transactions
end
