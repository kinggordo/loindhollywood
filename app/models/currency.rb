class Currency < ActiveRecord::Base
  has_many :joints
  has_many :jointbs
  has_many :jointcs
end
