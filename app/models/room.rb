class Room < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reservations
  mount_uploader :roompic, RoompicUploader #reservation.rbから移動。roomモデルを追加したのでこちらにあるのが正しくなったため
  validates :money, numericality: true,presence: true
  validates :roompic, presence: true
  validates :roomname, presence: true
end
