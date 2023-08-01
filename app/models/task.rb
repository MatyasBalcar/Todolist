class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project


  has_many :task_tags, dependent: :destroy
  has_many :tags, through: :task_tags

  validates :title, presence:true

  accepts_nested_attributes_for :tags

end
