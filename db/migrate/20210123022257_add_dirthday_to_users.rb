class AddDirthdayToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :dirthday, :date
  end
end
