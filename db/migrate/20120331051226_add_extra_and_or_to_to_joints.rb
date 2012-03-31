class AddExtraAndOrToToJoints < ActiveRecord::Migration
  def self.up
    add_column :joints, :extra_and_or_to, :integer
    say_with_time "updating extra_and_or_to information" do
      Joint.reset_column_information
      Joint.all.each do |j|
        if j.toextra
          j.update_attribute :extra_and_or_to, 2
        end
        if j.andextra
          j.update_attribute :extra_and_or_to, 1
        end
      end
    end
    remove_column :joints, :andextra
    remove_column :joints, :toextra
  end

  def self.down
    add_column :joints, :toextra, :boolean
    add_column :joints, :andextra, :boolean
    remove_column :joints, :extra_and_or_to
  end
end
