class Position < ActiveRecord::Base
  belongs_to :portfolio
  has_one :stock
end
