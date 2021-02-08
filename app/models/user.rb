class User < ApplicationRecord
  
  devise :database_authenticatable, 
   :registerable,
         :recoverable, :rememberable, :validatable
    
   PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
   validates_format_of :password,with: PASSWORD_REGEX, message: "both letters and numbers"

  with_options presence: true do
    validates :name,format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/, message: "Name is invalid. Input full-width characters."}
    
    validates :name_kana, format:{with: /\A[ァ-ヶー－]+\z/}
    validates :birthday
    validates :nickname
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)" }
    validates :qualification
    validates :gender
  end
end
