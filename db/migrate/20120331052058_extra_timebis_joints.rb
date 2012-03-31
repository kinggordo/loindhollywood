class ExtraTimebisJoints < ActiveRecord::Migration
 def self.up
    add_column :joints, :extratimebis, :string
    say_with_time "updating extratimebis information" do
      Joint.reset_column_information
      Joint.all.each do |j|
        if !j.timeextrabis.nil?
          hourstring = "%02d" % j.timeextrabis.hour
          minutestring = "%02d" % j.timeextrabis.min
          j.update_attribute :extratimebis, "#{hourstring}:#{minutestring}"
        end
      end
    end
    remove_column :joints, :timeextrabis
  end

  def self.down
    add_column :joints, :timeextrabis, :datetime
    remove_column :joints, :extratimebis
  end
end
