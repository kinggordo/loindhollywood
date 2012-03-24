class AddAndOrToTerToJoints < ActiveRecord::Migration
  def self.up
    add_column :joints, :and_or_to_ter, :integer
    say_with_time "updating and_or_to_ter information" do
      Joint.reset_column_information
      Joint.all.each do |j|
        if j.toter
          j.update_attribute :and_or_to_ter, 2
        end
        if j.andter
          j.update_attribute :and_or_to_ter, 1
        end
      end
    end
    remove_column :joints, :andter
    remove_column :joints, :toter
  end

  def self.down
    add_column :joints, :toter, :boolean
    add_column :joints, :andter, :boolean
    remove_column :joints, :and_or_to_ter
  end
end
