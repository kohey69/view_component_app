class CreateBlogPosts < ActiveRecord::Migration[8.0]
  def change
    create_table :blog_posts do |t|
      t.string :name, null: false
      t.string :url, null: false
      t.index :name, unique: true
      t.index :url, unique: true
      t.timestamps
    end
  end
end
