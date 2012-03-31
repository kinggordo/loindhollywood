class DropJointbs < ActiveRecord::Migration
  def self.up
    drop_table :jointbs
    drop_table :jointcs
    drop_table :jointds
    drop_table :jointes
    remove_column :featuremovattribs, :jointb_id
    remove_column :onstageattribs, :jointb_id
    remove_column :shortmovattribs, :jointb_id
    remove_column :featuremovattribs, :jointc_id
    remove_column :onstageattribs, :jointc_id
    remove_column :shortmovattribs, :jointc_id
    remove_column :featuremovattribs, :jointd_id
    remove_column :onstageattribs, :jointd_id
    remove_column :shortmovattribs, :jointd_id
    remove_column :featuremovattribs, :jointe_id
    remove_column :onstageattribs, :jointe_id
    remove_column :shortmovattribs, :jointe_id
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
