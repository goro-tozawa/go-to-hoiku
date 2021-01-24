class AddFacilityPhoneNumberToChildcareUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :childcare_users, :facility_phone_number, :string
  end
end
