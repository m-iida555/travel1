class ChangeDataRoompicToRooms < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :roompic, :text
  end
end
