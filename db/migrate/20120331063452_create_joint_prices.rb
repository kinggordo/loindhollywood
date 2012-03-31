class CreateJointPrices < ActiveRecord::Migration
  def self.up
    create_table :joint_prices do |t|
      t.references :joint
      t.references :price

      t.timestamps
    end
  end

  def self.down
    drop_table :joint_prices
  end
end
