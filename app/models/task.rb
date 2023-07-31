class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :title, presence:true
  validates :is_done, presence:true
end
