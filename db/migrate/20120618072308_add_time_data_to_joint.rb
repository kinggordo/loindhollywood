class AddTimeDataToJoint < ActiveRecord::Migration
  def self.up
    add_column :joints, :timea, :timestamp
  end

  def self.down
  end
end
