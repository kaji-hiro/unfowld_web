# == Schema Information
#
# Table name: members
#
#  id           :bigint           not null, primary key
#  instagram    :string(255)
#  introduction :string(255)
#  name         :string(255)
#  order        :integer
#  position     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
