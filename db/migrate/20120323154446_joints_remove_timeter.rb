class JointsRemoveTimeter < ActiveRecord::Migration
 def self.up
    add_column :joints, :timenextgen, :string
    say_with_time "updating time information" do
      Joint.reset_column_information
      Joint.all.each do |j|
        if !j.timeter.nil?
          hourstring = "%02d" % j.timeter.hour
          minutestring = "%02d" % j.timeter.min
          j.update_attribute :timenextgen, "#{hourstring}:#{minutestring}"
        end
      end
    end
    remove_column :joints, :timeter
    rename_column :joints, :timenextgen, :timeter
  end

  def self.down
   remove_column :joints, :timenextgen 
   rename_column :joints, :timeter, :timenextgen
   add_column :joints, :timeter, :datetime
  end
end
