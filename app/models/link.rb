# == Schema Information
#
# Table name: links
#
#  id            :integer          not null, primary key
#  user_url      :string(255)
#  short_url     :string(255)
#  ip            :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  scheme_id     :integer
#  click_counter :integer          default(0)
#

class Link < ActiveRecord::Base
  attr_accessible :ip, :user_url
  belongs_to :scheme

  def add_save
    self.save_counter += 1
  end

  def add_click
    self.click_counter += 1
  end

  def generate_urls
    # use the default scheme in case there isn't one
    scheme = 'http://'
    # grab the user's url
    url = self.user_url
    # does it have a scheme?
    if url.include?('://')
      # grab the scheme
      scheme = url[0, url.index("://") + 3]
      # remove the scheme from the user's url
      self.user_url = url[url.index("://") + 3 .. url.length]
    end
    self.scheme_id = Scheme.where(name: scheme).first.id
    self.short_url = Digest::MD5.hexdigest(scheme + self.user_url).first(6).encode("UTF-8") unless self.scheme_id.nil?
  end
end
