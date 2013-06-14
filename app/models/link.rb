# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  user_url   :string(255)
#  short_url  :string(255)
#  ip         :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Link < ActiveRecord::Base
  attr_accessible :ip, :short_url, :user_url
  before_save :generate_short_url

  private
  def generate_short_url
    self.short_url = Digest::MD5.hexdigest(self.user_url + DateTime.now.to_i.to_s).first(6).encode("UTF-8")
  end
end
