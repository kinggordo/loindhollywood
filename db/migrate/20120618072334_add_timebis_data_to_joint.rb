class AddTimebisDataToJoint < ActiveRecord::Migration
  def self.up
    add_column :joints, :timebisa, :timestamp
  end

  def self.down
  end
end
