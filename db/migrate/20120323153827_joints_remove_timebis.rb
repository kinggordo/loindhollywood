class JointsRemoveTimebis < ActiveRecord::Migration
 def self.up
    add_column :joints, :timenextgen, :string
    say_with_time "updating time information" do
      Joint.reset_column_information
      Joint.all.each do |j|
        if !j.timebis.nil?
          hourstring = "%02d" % j.timebis.hour
          minutestring = "%02d" % j.timebis.min
          j.update_attribute :timenextgen, "#{hourstring}:#{minutestring}"
        end
      end
    end
    remove_column :joints, :timebis
    rename_column :joints, :timenextgen, :timebis
  end

  def self.down
   remove_column :joints, :timenextgen 
   rename_column :joints, :timebis, :timenextgen
   add_column :joints, :timebis, :datetime
  end
end
