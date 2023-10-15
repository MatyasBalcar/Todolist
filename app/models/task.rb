class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project

  has_one_attached :file

  has_many :task_tags, dependent: :destroy
  has_many :tags, through: :task_tags

  validates :title, presence: true
  validates :solver_id, presence: true
  scope :for_user, ->(user) { where(user_id: user.id) }

  def self.ransackable_attributes(auth_object = nil)
    [ "title"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["project", "tags", "task_tags", "user"]
  end
  accepts_nested_attributes_for :tags

end
