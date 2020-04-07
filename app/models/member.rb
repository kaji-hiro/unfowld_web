# == Schema Information
#
# Table name: members
#
#  id           :bigint           not null, primary key
#  introduction :string(255)
#  name         :string(255)
#  order        :integer
#  position     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Member < ApplicationRecord
  has_one_attached :image, dependent: :destroy

  validates :name, presence: true
  validates :introduction, presence: true
end
