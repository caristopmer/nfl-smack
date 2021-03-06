class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :username, null: false, unique:true
      t.string   :email, null: false, unique:true
      t.string   :password_hash
      t.integer  :favorite_team_id

      t.timestamps
    end
  end
end
