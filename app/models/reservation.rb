class Reservation < ApplicationRecord
  belongs_to :rooms
  mount_uploader :roompic, RoompicUploader
end
