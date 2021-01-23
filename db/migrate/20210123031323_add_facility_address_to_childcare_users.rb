class AddFacilityAddressToChildcareUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :childcare_users, :facility_address, :string
  end
end
