class Work < ApplicationRecord
  belongs_to :childcare_user
  has_one_attached :image
end
