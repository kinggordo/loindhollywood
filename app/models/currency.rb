class Currency < ActiveRecord::Base
  has_many :joints
  has_many :jointbs
  has_many :jointcs
  has_many :jointds
  has_many :jointes
  has_many :salles
end
