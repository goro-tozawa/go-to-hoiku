class User < ApplicationRecord
 
  # belongs_to :qualification
  # has_many :works
  belongs_to :childcare_user
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
