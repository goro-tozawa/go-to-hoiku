class Work < ApplicationRecord
  belongs_to :childcare_user
  has_one_attached :image

  with_options presence: true do
    validates :work_title
    validates :facility_name
    validates :job_description
    validates :person
    validates :recruiting_days
    validates :recruiting_times
    validates :hourly_wage
  end
end
