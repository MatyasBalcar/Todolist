class Project < ApplicationRecord
  validates :title, presence: true
  validates :position, presence: true
end
