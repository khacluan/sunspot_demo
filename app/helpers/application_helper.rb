module ApplicationHelper
  def url_searched_for(object)
    case object.class.to_s
    when 'Post'
      post_path(object)
    when 'Article'
      article_path(object)
    else
      '#'
    end
  end
end
