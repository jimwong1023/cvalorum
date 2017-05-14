class User < ActiveRecord::Base
  has_many :portfolios
end
