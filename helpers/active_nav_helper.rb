module ActiveNavHelper
  # Returns a CSS class if the filename is part of the current URL
  #
  # == Parameters
  #
  #   @param filename [String] of the page to look up
  #
  # == Usage
  #
  #   {nav_active("page.html")}


  def active_navigation_item_class
    data.settings.site.active_navigation_item_class
  end

  def nav_active(url)
    if (url.instance_of? String)
      if current_resource.url == url_for(url)
        {class: active_navigation_item_class}
      else
        {}
      end
    elsif (url.instance_of? Array)
      if url.map { |url| url_for(url) }.include?(current_resource.url)
        {class: active_navigation_item_class}
      else
        {}
      end
    else
      {}
    end
  end
end
