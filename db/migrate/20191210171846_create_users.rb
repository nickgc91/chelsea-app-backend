class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :favorite_player
      t.string :favorite_video
      t.string :favorite_match
      t.string :memorable_moment
      t.string :uplifting_win
      t.string :demoralizing_defeat

      t.timestamps
    end
  end
end
