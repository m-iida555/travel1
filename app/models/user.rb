class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :img, AvatarUploader

  validates :name, presence: true
  validates :introduction, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true
  has_many :rooms
  has_many :reservations
end