class AddGenderIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :gender_id, :integer
  end
end
