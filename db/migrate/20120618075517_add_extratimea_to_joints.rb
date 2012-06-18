class AddExtratimeaToJoints < ActiveRecord::Migration
  def self.up
    add_column :joints, :extratimea, :timestamp
  end

  def self.down
  end
end
