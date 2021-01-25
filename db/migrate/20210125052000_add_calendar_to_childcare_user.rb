class AddCalendarToChildcareUser < ActiveRecord::Migration[6.0]
  def change
    add_column :childcare_users, :calendar, :integer
  end
end
