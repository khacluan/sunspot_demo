class Article < ActiveRecord::Base
  belongs_to :category

  searchable do
    text    :title, :tag
    text    :content

    integer :category_id
  end
end
