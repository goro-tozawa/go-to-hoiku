class AddCalendarToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :calendar, :integer
  end
end
