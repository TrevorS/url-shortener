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

require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
