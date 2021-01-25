class ChildcareUser < ApplicationRecord
  has_many :users

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
