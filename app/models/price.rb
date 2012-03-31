class Price < ActiveRecord::Base
  belongs_to :currency

  has_many :joint_prices
  has_many :joints, :through => :joint_prices
end
