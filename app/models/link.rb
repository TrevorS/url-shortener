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
end
