class Tag < ApplicationRecord
  has_many :task_tags, dependent: :destroy
  has_many :tasks, through: :task_tags

  scope :for_user, ->(user) {where(user_id: user.id)}

  def self.ransackable_attributes(auth_object = nil)
    [ "title"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["project", "tags", "task_tags", "user"]
    end
end
