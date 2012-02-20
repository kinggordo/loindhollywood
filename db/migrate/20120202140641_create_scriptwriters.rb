class CreateScriptwriters < ActiveRecord::Migration
  def self.up
    create_table :scriptwriters do |t|
      t.string :name
      t.integer :film_id
      t.timestamps
    end
  end

  def self.down
    drop_table :scriptwriters
  end
end
