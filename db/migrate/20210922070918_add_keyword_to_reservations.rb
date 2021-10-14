class AddKeywordToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :keyword, :string
  end
end
