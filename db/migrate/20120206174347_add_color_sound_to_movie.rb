class AddColorSoundToMovie < ActiveRecord::Migration
  def self.up
    
    add_column :films, :color_id, :integer
    add_column :films, :sound_id, :integer
  end

  def self.down
  end
end
