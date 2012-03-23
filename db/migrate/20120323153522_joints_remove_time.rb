class JointsRemoveTime < ActiveRecord::Migration
  def self.up
    remove_column :joints, :time
    rename_column :joints, :timenextgen, :time
  end

  def self.down
    rename_column :joints, :time, :timenextgen
    add_column :joints, :time
  end
end
