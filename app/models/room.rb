class Room < ApplicationRecord
  belongs_to :user, optional: true
  has_many :reservations
  mount_uploader :roompic, RoompicUploader #reservation.rbから移動。roomモデルを追加したのでこちらにあるのが正しくなったため
end
