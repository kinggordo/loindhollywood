class CreateOffices < ActiveRecord::Migration
  def self.up
    create_table :offices do |t|
      t.string :titre
      t.string :titreo
      t.string :rea
      t.string :year
      t.string :country
      t.string :dure
      t.string :son
      t.string :producer
      t.string :lieu
      t.string :format
      t.string :support
      t.string :genre
      t.string :themea
      t.string :themeb
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :offices
  end
end
