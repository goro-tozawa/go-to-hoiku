class ChildcareUser < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
   PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
   validates_format_of :password,with: PASSWORD_REGEX, message: "both letters and numbers"

  #  with_options presence: true do
  #   validates :facility_name,format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/, message: "Name is invalid. Input full-width characters."}

  #   validates :facility_name_kana, format:{with: /\A[ァ-ヶー－]+\z/}

  #   validates :business_form
  #   validates :facility_address
  #   validates :facility_phone_number, format: { with:/\A\d{11}\z/, message: "Please write within 11 digits with only numbers" }
  #   validates :representative
  #   validates :representative_phone_number, format: { with:/\A\d{11}\z/, message: "Please write within 11 digits with only numbers" }
  #   validates :times
  # end
end
