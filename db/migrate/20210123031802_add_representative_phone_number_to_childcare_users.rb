class AddRepresentativePhoneNumberToChildcareUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :childcare_users, :representative_phone_number, :string
  end
end
