module LinksHelper

  def get_full_user_link(link)
    url = "http://#{link.user_url}"
    link_to url, url
  end

  def get_full_short_link(link)
    url = "http://#{request.host_with_port}/#{link.short_url}"
    link_to url, url
  end
end
