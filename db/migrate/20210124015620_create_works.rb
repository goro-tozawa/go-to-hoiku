class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.integer         :area_id,                  null: false  
      t.integer         :facility_name,         null: false  
      t.integer         :works_id,               null: false  
      t.integer         :times_id,                null: false
      t.references    :childcare_user,       null: false
    end
  end
end
