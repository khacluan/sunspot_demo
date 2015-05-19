class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :categories, column: :category_id
  end
end
