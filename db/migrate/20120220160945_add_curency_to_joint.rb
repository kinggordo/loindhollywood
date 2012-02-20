class AddCurencyToJoint < ActiveRecord::Migration
  def self.up
    add_column :joints, :currency_id, :integer
  end

  def self.down
  end
end
