module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ruby on Rails"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def creator_path
    creator = User.find_by_email("mickle00@gmail.com")
    if creator
      user_path(creator)
    else
      root_path
    end
  end
end
