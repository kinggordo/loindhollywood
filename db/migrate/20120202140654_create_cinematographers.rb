class CreateCinematographers < ActiveRecord::Migration
  def self.up
    create_table :cinematographers do |t|
      t.string :name
      t.integer :film_id
      t.timestamps
    end
  end

  def self.down
    drop_table :cinematographers
  end
end
