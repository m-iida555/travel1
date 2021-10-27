class RemoveRoomnameFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :roomname, :string
  end
end
