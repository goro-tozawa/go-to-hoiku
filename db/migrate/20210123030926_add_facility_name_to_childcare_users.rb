class AddFacilityNameToChildcareUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :childcare_users, :facility_name, :string
  end
end
