class CreateSallePrices < ActiveRecord::Migration
  def self.up
    create_table :salle_prices do |t|
      t.references :salle
      t.references :price

      t.timestamps
    end
  end

  def self.down
    drop_table :salle_prices
  end
end
