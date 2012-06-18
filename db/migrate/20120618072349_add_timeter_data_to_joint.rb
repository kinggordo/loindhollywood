class AddTimeterDataToJoint < ActiveRecord::Migration
  def self.up
    add_column :joints, :timetera, :timestamp
  end

  def self.down
  end
end
