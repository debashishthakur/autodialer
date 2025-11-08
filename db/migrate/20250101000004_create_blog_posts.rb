class CreateBlogPosts < ActiveRecord::Migration[7.1]
    def change
      create_table :blog_posts do |t|
        t.string :title, null: false
        t.string :slug, null: false
        t.text :content
        t.string :status, default: 'draft'
        t.string :source_api
        t.text :keywords
        t.timestamps
      end
      
      add_index :blog_posts, :slug, unique: true
    end
  end
  