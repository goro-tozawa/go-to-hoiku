class AddBusinessFormToChildcareUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :childcare_users, :business_form, :integer
  end
end
