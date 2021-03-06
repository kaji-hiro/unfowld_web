# == Schema Information
#
# Table name: members
#
#  id           :bigint           not null, primary key
#  category     :integer
#  instagram    :string(255)
#  introduction :string(255)
#  name         :string(255)
#  order        :integer
#  position     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Member < ApplicationRecord
  has_one_attached :image, dependent: :destroy
  enum category: { business: 0, creative: 1 }

  validates :name, presence: true
  validates :introduction, presence: true
  validates :image, presence: true
end
