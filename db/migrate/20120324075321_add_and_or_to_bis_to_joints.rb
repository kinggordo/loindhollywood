class AddAndOrToBisToJoints < ActiveRecord::Migration
  def self.up
    add_column :joints, :and_or_to_bis, :integer
    say_with_time "updating and_or_to_bis information" do
      Joint.reset_column_information
      Joint.all.each do |j|
        if j.tobis
          j.update_attribute :and_or_to_bis, 2
        end
        if j.andbis
          j.update_attribute :and_or_to_bis, 1
        end
      end
    end
    remove_column :joints, :andbis
    remove_column :joints, :tobis
  end

  def self.down
    add_column :joints, :tobis, :boolean
    add_column :joints, :andbis, :boolean
    remove_column :joints, :and_or_to_bis
  end
end
