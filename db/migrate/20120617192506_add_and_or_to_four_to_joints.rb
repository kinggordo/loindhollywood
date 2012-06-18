class AddAndOrToFourToJoints < ActiveRecord::Migration
  def self.up
    add_column :joints, :and_or_to_four, :integer
  end

  def self.down
  end
end
