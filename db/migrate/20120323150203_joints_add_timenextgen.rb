class JointsAddTimenextgen < ActiveRecord::Migration
  def self.up
    add_column :joints, :timenextgen, :string
    say_with_time "updating time information" do
      Joint.reset_column_information
      Joint.all.each do |j|
        if !j.time.nil?
          hourstring = "%02d" % j.time.hour
          minutestring = "%02d" % j.time.minute
          j.update_attribute :timenextgen, "#{hourstring}:#{minutestring}"
        end
      end
    end
  end

  def self.down
   remove_column :joints, :timenextgen 
  end
end
