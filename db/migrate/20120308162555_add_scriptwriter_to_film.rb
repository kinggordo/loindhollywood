class AddScriptwriterToFilm < ActiveRecord::Migration
  def self.up
    add_column :people, :scriptwriter_id, :integer
  end

  def self.down
  end
end
