class AddOptionToJointb < ActiveRecord::Migration
  def self.up
    add_column :jointbs, :day, :string
    add_column :jointbs, :daybis, :string
    add_column :jointbs, :holydays, :boolean
    add_column :jointbs, :time, :timestamp
    add_column :jointbs, :and, :boolean
    add_column :jointbs, :to, :boolean
    add_column :jointbs, :timebis, :timestamp
    add_column :jointbs, :andbis, :boolean
    add_column :jointbs, :tobis, :boolean
    add_column :jointbs, :timeter, :timestamp
    add_column :jointbs, :andter, :boolean
    add_column :jointbs, :toter, :boolean
    add_column :jointbs, :timefour, :timestamp
    add_column :jointbs, :dayextra, :string
    add_column :jointbs, :timeextra, :timestamp
    add_column :jointbs, :andextra, :boolean
    add_column :jointbs, :toextra, :boolean
    add_column :jointbs, :timeextrabis, :timestamp
    add_column :jointbs, :currency_id, :integer
    add_column :jointbs, :number, :string
  end

  def self.down
  end
end
