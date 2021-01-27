class CreateChildcareUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :childcare_users do |t|
      t.string :facility_name,              null: false
      t.string :facility_name_kana,              null: false
      t.integer :business_form,              null: false
      t.string :facility_address,              null: false
      t.string :facility_phone_number,              null: false
      t.string :representative,              null: false
      t.string :representative_phone_number,              null: false
      t.integer :times_id,              null: false
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.text :self_introduction
      t.timestamps
    end
  end
end
