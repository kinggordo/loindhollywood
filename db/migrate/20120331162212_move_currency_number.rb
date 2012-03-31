class MoveCurrencyNumber < ActiveRecord::Migration
  def self.up
    say_with_time "moving currency_id and number into own table" do
      Joint.all.each do |j|
        if !j.currency_id.nil? && !j.number.blank?
          j.prices.create! :currency_id => j.currency_id, :number => j.number
        end
      end
    end
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
