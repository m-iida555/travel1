class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :roompic
      t.string :roomname
      t.string :roominfo
      t.integer :money
      t.integer :start
      t.integer :end
      t.integer :persons

      t.timestamps
    end
  end
end
