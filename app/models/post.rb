class Post < ActiveRecord::Base
  belongs_to :category

  searchable do
    text :title, :content
    integer :category_id
  end
end
