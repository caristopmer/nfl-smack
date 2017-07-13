class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string   :location, null: false
      t.string   :name, null: false
      #t.string   :division
      t.string   :color_hex
      t.string   :logo_address

      t.timestamps
    end
  end
end
