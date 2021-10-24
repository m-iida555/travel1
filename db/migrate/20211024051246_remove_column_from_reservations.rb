class RemoveColumnFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :roompic, :string
    remove_column :reservations, :roominfo, :string
    remove_column :reservations, :money, :integer
    remove_column :reservations, :area, :string
    remove_column :reservations, :keyword, :string
    remove_column :reservations, :user_id, :integer
  end
end
