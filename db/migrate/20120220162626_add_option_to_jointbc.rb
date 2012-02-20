class AddOptionToJointbc < ActiveRecord::Migration
  def self.up
    add_column :jointcs, :day, :string
    add_column :jointcs, :daybis, :string
    add_column :jointcs, :holydays, :boolean
    add_column :jointcs, :time, :timestamp
    add_column :jointcs, :and, :boolean
    add_column :jointcs, :to, :boolean
    add_column :jointcs, :timebis, :timestamp
    add_column :jointcs, :andbis, :boolean
    add_column :jointcs, :tobis, :boolean
    add_column :jointcs, :timeter, :timestamp
    add_column :jointcs, :andter, :boolean
    add_column :jointcs, :toter, :boolean
    add_column :jointcs, :timefour, :timestamp
    add_column :jointcs, :dayextra, :string
    add_column :jointcs, :timeextra, :timestamp
    add_column :jointcs, :andextra, :boolean
    add_column :jointcs, :toextra, :boolean
    add_column :jointcs, :timeextrabis, :timestamp
    add_column :jointcs, :currency_id, :integer
    add_column :jointcs, :number, :string
  end

  def self.down
  end
end
