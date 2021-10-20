class Reservation < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :roompic, RoompicUploader
end
