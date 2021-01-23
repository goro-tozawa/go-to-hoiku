class AddrepresentativeToChildcareUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :childcare_users, :representative, :string
  end
end
