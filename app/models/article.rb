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

class Article < ApplicationRecord
  has_one_attached :thumbnail, dependent: :destroy
  belongs_to :user

  enum article_type: { event: 0, blog: 1 }
  has_rich_text :content

  validates :user_id, presence: true
  validates :article_type, presence: true
  validates :thumbnail, presence: true
  validates :content, presence: true
  validates :title, presence: true
end
