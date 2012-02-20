class AddNumberToJoint < ActiveRecord::Migration
  def self.up
    add_column :joints, :number, :string
  end

  def self.down
  end
end
