class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string   :body, null: false
      t.integer  :author_id, null: false
      t.integer  :post_id, null: false

      t.timestamps
    end
  end
end
