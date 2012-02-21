class AddOptionToJointe < ActiveRecord::Migration
  def self.up
    add_column :jointes, :day, :string
    add_column :jointes, :daybis, :string
    add_column :jointes, :holydays, :boolean
    add_column :jointes, :time, :timestamp
    add_column :jointes, :and, :boolean
    add_column :jointes, :to, :boolean
    add_column :jointes, :timebis, :timestamp
    add_column :jointes, :andbis, :boolean
    add_column :jointes, :tobis, :boolean
    add_column :jointes, :timeter, :timestamp
    add_column :jointes, :andter, :boolean
    add_column :jointes, :toter, :boolean
    add_column :jointes, :timefour, :timestamp
    add_column :jointes, :dayextra, :string
    add_column :jointes, :timeextra, :timestamp
    add_column :jointes, :andextra, :boolean
    add_column :jointes, :toextra, :boolean
    add_column :jointes, :timeextrabis, :timestamp
    add_column :jointes, :currency_id, :integer
    add_column :jointes, :number, :string
  end

  def self.down
  end
end
