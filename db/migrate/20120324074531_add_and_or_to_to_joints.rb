class AddAndOrToToJoints < ActiveRecord::Migration
  def self.up
    add_column :joints, :and_or_to, :integer
    say_with_time "updating and_or_to information" do
      Joint.reset_column_information
      Joint.all.each do |j|
        if j.to
          j.update_attribute :and_or_to, 2
        end
        if j.and
          j.update_attribute :and_or_to, 1
        end
      end
    end
    remove_column :joints, :and
    remove_column :joints, :to
  end

  def self.down
    add_column :joints, :to, :boolean
    add_column :joints, :and, :boolean
    remove_column :joints, :and_or_to
  end
end
