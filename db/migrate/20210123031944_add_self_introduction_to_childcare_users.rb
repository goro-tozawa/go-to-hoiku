class AddSelfIntroductionToChildcareUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :childcare_users, :self_introduction, :text
  end
end
