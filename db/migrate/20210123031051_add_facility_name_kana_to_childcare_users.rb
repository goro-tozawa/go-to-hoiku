class AddFacilityNameKanaToChildcareUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :childcare_users, :facility_name_kana, :string
  end
end
