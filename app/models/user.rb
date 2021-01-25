class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :qualification
  # has_many :works
  belongs_to :childcare_user
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :qualification_id, numericality: { other_than: 1 } 
end
