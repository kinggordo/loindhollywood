class AddScheduleToJoint < ActiveRecord::Migration
  def self.up
    add_column :joints, :day, :string
    add_column :joints, :daybis, :string
    add_column :joints, :holydays, :boolean
    add_column :joints, :time, :timestamp
    add_column :joints, :and, :boolean
    add_column :joints, :to, :boolean
    add_column :joints, :timebis, :timestamp
    add_column :joints, :andbis, :boolean
    add_column :joints, :tobis, :boolean
    add_column :joints, :timeter, :timestamp
    add_column :joints, :andter, :boolean
    add_column :joints, :toter, :boolean
    add_column :joints, :timefour, :timestamp
    add_column :joints, :dayextra, :string
    add_column :joints, :timeextra, :timestamp
    add_column :joints, :andextra, :boolean
    add_column :joints, :toextra, :boolean
    add_column :joints, :timeextrabis, :timestamp
    
    
    
    
    
  end

  def self.down
  end
end
