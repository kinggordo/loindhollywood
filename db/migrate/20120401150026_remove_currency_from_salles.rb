class RemoveCurrencyFromSalles < ActiveRecord::Migration
  def self.up
    remove_column :salles, :currency_id
    remove_column :salles, :number
  end

  def self.down
    add_column :salles, :currency_id, :integer
    add_column :salles, :number, :string
  end
end
