class JointsRemoveTimefour < ActiveRecord::Migration
 def self.up
    add_column :joints, :timenextgen, :string
    say_with_time "updating time information" do
      Joint.reset_column_information
      Joint.all.each do |j|
        if !j.timefour.nil?
          hourstring = "%02d" % j.timefour.hour
          minutestring = "%02d" % j.timefour.min
          j.update_attribute :timenextgen, "#{hourstring}:#{minutestring}"
        end
      end
    end
    remove_column :joints, :timefour
    rename_column :joints, :timenextgen, :timefour
  end

  def self.down
   remove_column :joints, :timenextgen 
   rename_column :joints, :timefour, :timenextgen
   add_column :joints, :timefour, :datetime
  end
end
