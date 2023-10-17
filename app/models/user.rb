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
  has_one_attached :file
  validates :file, presence: true
  def avatar_thumbnail(x,user)
    if user.file.attached?
      file.variant(resize: (x.to_s+'x'+x.to_s+'!')).processed
    else
      '/default_avatar.png'
  end

  end
  end
