class AddAllowPasswordChangeToUsers < ActiveRecord::Migration[6.1]
    def change
    add_column :users, :allow_password_change, :boolean

  end

end
