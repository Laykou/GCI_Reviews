module ApplicationHelper
  def nav_links
    items = {"/" => "Home", "/about" => "About", "/contact" => "Contact"}
    content_tag :ul, :class => "nav navbar-nav" do
      items.collect { |link, title| concat nav_item(link, title) }
    end
  end

  def nav_item(link, title)
    attributes = {}
    if current_page? link
      attributes[:class] = "active"
    end
    content_tag(:li, link_to(title, link), attributes)
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Global Clinic Index"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  # Return true if a user is looged in
  def online?
    false
  end
end
