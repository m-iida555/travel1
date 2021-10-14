class AddAreaToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :area, :string
  end
end
