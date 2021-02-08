class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :work
  has_one :domicile
end
