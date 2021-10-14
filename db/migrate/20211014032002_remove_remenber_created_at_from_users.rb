class RemoveRemenberCreatedAtFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :remember_created_at, :string
  end
end
