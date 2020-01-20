# == Schema Information
#
# Table name: articles
#
#  id           :bigint           not null, primary key
#  article_type :integer          not null
#  content      :text(65535)
#  title        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class articleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
