class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string :description
      t.datetime :departure
      t.integer :user_id
      t.boolean :fifteen_minute_message_sent, { :default => false }
      t.boolean :minute_message_sent, { :default => false }

      t.timestamps
    end
  end
end
