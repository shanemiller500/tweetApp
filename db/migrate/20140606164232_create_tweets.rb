class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :message
      t.references :user, index: true

      t.timestamps
    end
  end
end
