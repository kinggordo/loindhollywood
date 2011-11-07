class AddSourceToFilm < ActiveRecord::Migration
  def self.up
    add_column :films, :source, :string
  end

  def self.down
    remove_column :films, :source
  end
end
