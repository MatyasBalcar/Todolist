class Tag < ApplicationRecord
  has_many :task_tags, dependent: :destroy
  has_many :tasks, through: :task_tags

  scope :for_user, ->(user) {where(user_id: user.id)}
end
