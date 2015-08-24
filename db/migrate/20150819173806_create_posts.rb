class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :username
      t.string :caption
      t.string :picture
    end
  end
  def down
    drop_table :posts
  end
end
