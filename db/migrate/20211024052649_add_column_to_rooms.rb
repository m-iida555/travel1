class AddColumnToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :roompic, :string
    add_column :rooms, :roominfo, :string
    add_column :rooms, :money, :integer
    add_column :rooms, :area, :string
    add_column :rooms, :keyword, :string
    add_column :rooms, :user_id, :integer
  end
end
