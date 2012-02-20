class CreateFemalecasts < ActiveRecord::Migration
  def self.up
    create_table :femalecasts do |t|
      t.string :name
      t.integer :film_id
      t.timestamps
    end
  end

  def self.down
    drop_table :femalecasts
  end
end
