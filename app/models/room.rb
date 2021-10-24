class Room < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :reservations, optional: true
end
