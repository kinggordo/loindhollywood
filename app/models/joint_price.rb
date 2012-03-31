class JointPrice < ActiveRecord::Base
  belongs_to :joint
  belongs_to :price
end
