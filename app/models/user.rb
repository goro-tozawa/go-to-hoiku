class User < ApplicationRecord
  devise :database_authenticatable, 
   :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :name_kana
    validates :birthday
    validates :nickname
    validates :postal_code
    validates :qualification
    validates :gender
  end
end
