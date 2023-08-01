class Project < ApplicationRecord
  validates :title, presence: true
  validates :position, presence: true
  scope :for_user, ->(user) { where(user_id: user.id) }

  belongs_to :user
  has_many :tasks, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    [ "title"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["project", "tags", "task_tags", "user"]
    end
end
