class AddTimesIdToChildcareUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :childcare_users, :times_id, :integer
  end
end
