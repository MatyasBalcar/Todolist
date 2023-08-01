class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :surname, presence: true

  has_many :projects, dependent: :destroy
  has_many :tasks , dependent: :destroy
  has_many :tags, dependent: :destroy
end
