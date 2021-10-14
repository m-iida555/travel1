class AddResetPasswordSetAtToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :reset_password_set_at, :datetime
  end
end
