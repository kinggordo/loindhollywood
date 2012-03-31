class ExtraTimeJoints < ActiveRecord::Migration
 def self.up
    add_column :joints, :extratime, :string
    say_with_time "updating extratime information" do
      Joint.reset_column_information
      Joint.all.each do |j|
        if !j.timeextra.nil?
          hourstring = "%02d" % j.timeextra.hour
          minutestring = "%02d" % j.timeextra.min
          j.update_attribute :extratime, "#{hourstring}:#{minutestring}"
        end
      end
    end
    remove_column :joints, :timeextra
  end

  def self.down
    add_column :joints, :timeextra, :datetime
    remove_column :joints, :extratime 
  end
end
