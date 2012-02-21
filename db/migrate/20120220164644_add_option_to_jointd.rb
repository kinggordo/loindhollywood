class AddOptionToJointd < ActiveRecord::Migration
  def self.up
    add_column :jointds, :day, :string
    add_column :jointds, :daybis, :string
    add_column :jointds, :holydays, :boolean
    add_column :jointds, :time, :timestamp
    add_column :jointds, :and, :boolean
    add_column :jointds, :to, :boolean
    add_column :jointds, :timebis, :timestamp
    add_column :jointds, :andbis, :boolean
    add_column :jointds, :tobis, :boolean
    add_column :jointds, :timeter, :timestamp
    add_column :jointds, :andter, :boolean
    add_column :jointds, :toter, :boolean
    add_column :jointds, :timefour, :timestamp
    add_column :jointds, :dayextra, :string
    add_column :jointds, :timeextra, :timestamp
    add_column :jointds, :andextra, :boolean
    add_column :jointds, :toextra, :boolean
    add_column :jointds, :timeextrabis, :timestamp
    add_column :jointds, :currency_id, :integer
    add_column :jointds, :number, :string
  end

  def self.down
  end
end
