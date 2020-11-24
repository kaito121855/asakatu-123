class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.integer :manth,          null: false
      t.integer :day,            null: false
      t.integer :wake_up_hour,   null: false
      t.integer :wake_up_minute, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
