class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string         :job_description,                  null: false  
      t.integer         :recruiting_number_id,         null: false  
      t.integer         :recruiting_days,               null: false  
      t.integer         :recruiting_times,                null: false
      t.integer         :hourly_wage,                null: false
      t.references    :childcare_user,       null: false
    end
  end
end
