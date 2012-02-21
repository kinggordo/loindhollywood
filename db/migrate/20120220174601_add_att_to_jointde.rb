class AddAttToJointde < ActiveRecord::Migration
  def self.up
    add_column :onstageattribs, :jointd_id, :integer
    add_column :onstageattribs, :jointe_id, :integer
    add_column :shortmovattribs, :jointd_id, :integer
    add_column :shortmovattribs, :jointe_id, :integer
    add_column :featuremovattribs, :jointd_id, :integer
    add_column :featuremovattribs, :jointe_id, :integer
   
  end

  def self.down
  end
end
