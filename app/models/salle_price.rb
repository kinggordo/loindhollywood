class SallePrice < ActiveRecord::Base
  belongs_to :salle
  belongs_to :price
end
