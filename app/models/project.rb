class Project < ApplicationRecord
  validates :title, presence: true
  validates :position, presence: true
  scope :for_user, ->(user) { where(user_id: user.id) }
  belongs_to :user
  has_many :tasks, dependent: :destroy
end
