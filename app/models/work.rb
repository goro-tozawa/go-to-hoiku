class Work < ApplicationRecord
  belongs_to :childcare_user
  has_one_attached :image
  has_one :purchase

  with_options presence: true do
    validates :image
    validates :work_title, format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/, message: "Work_title is invalid. Input full-width characters."}
    validates :facility_name, format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/, message: "Facility_name is invalid. Input full-width characters."}
    validates :job_description
    validates :person
    validates :recruiting_days
    validates :recruiting_times
    validates :hourly_wage
  end
end
