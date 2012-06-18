class AddExtratimebisaToJoints < ActiveRecord::Migration
  def self.up
    add_column :joints, :extratimebisa, :timestamp
  end

  def self.down
  end
end
