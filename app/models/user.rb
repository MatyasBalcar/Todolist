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
  has_one_attached :avatar
  #validates :avatar, presence: true

  def avatar_thumbnail
    avatar.variant(resize: "150x150!").processed if avatar.attached?
  end
end
