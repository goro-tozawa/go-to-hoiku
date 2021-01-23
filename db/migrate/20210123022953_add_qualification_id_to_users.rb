class AddQualificationIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :qualification_id, :integer
  end
end
