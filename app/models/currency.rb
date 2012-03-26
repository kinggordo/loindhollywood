class Currency < ActiveRecord::Base
  has_many :joints
  has_many :salles
end
