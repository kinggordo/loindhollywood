class AddTimefourDataToJoint < ActiveRecord::Migration
  def self.up
    add_column :joints, :timefoura, :timestamp
  end

  def self.down
  end
end
