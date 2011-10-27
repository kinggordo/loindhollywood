class AddTitleToFilm < ActiveRecord::Migration
  def self.up
    add_column :films, :titlef, :string
  end

  def self.down
    remove_column :films, :titlef
  end
end
