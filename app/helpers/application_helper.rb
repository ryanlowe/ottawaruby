# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def format_title(title)
    return SITE_NAME if title.nil? or title.length < 1
    title+" - "+SITE_NAME
  end
end
