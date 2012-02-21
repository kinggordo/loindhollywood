class AddStuffToSalle < ActiveRecord::Migration
  def self.up
    add_column :salles, :exhib, :string
    add_column :salles, :soundsys, :string
    add_column :salles, :currency_id, :integer
    add_column :salles, :number, :string
  end

  def self.down
  end
end
