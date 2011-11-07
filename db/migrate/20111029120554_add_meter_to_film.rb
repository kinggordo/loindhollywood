class AddMeterToFilm < ActiveRecord::Migration
  def self.up
    add_column :films, :meter, :string
    add_column :films, :feed, :string
  end

  def self.down
    remove_column :films, :feed
    remove_column :films, :meter
  end
end
