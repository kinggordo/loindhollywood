class AddIdToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :director_id, :integer
    add_column :people, :malecast_id, :integer
    add_column :people, :femalecast_id, :integer
    add_column :people, :producer_id, :integer
    add_column :people, :scripwriter_id, :integer
    add_column :people, :cinematographer_id, :integer
    add_column :people, :musician_id, :integer
    
  end

  def self.down
  end
end
