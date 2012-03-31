class RemoveCurrencyandnumberFromJoints < ActiveRecord::Migration
  def self.up
    remove_column :joints, :currency_id
    remove_column :joints, :number
  end

  def self.down
    add_column :joints, :currency_id, :integer
    add_column :joints, :number, :string
  end
end
