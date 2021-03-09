FactoryBot.define do
  factory :user do
     name                                       {"test"}
     email                                       {Faker::Internet.free_email}
     password                                     {"aaaa00"}
     password_confirmation                   {"aaaa00"}
     nickname                                       {"test"}
     postal_code                                   {"111-1111"}
     qualification                                   {"111-1111"}
     last_name                                     {"テスト"}
     first_name                                    {"テスト"}
     last_kana                                     {"アアア"}
     first_kana                                    {"アアア"}
   end
 end