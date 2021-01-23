## users テーブル

| Column | Type | Options |
| ---------- | -------- | -------- |
| name | string | null: false |
| name_kana | string | null: false|
| birthday | date | null: false |
| nick_name | string | null: false|
| postal_code | string | null: false |
| email | string | null: false | unique: true |
| encrypted_password | string | null: false |
| qualification_id | integer | null: false |
<!-- 資格を持っているか -->
| gender | string | null: false|
<!-- 男女でできる仕事が違う可能性があるため -->
| self-introduction | text | -------- |
- has_many :works
- belongs_to :childcare_user

## childcare_users テーブル

| Column | Type | Options |
| ---------- | -------- | -------- |
| facility_name| string | null: false |
<!-- 施設名 -->
| facility_name_kana | string | null: false|
| business_form | integer | null: false|
| facility_address | string | null: false|
| facility_phone_number | string | null: false|
| representative | string | null: false|
<!-- 代表者 -->
| representative_phone_number | string | null: false|
| times_id | integer | null: false |
| encrypted_password | string | null: false |
| self-introduction | text | -------- |
| user | references | null: false |
- has_many :works
- has_many :childcare_user

## works
| Column | Type | Options |
| ---------- | -------- | -------- |
| works_id| integer | null: false |
| times_id | integer | null: false |
| childcare_user | references | null: false |

- belongs_to :user
- belongs_to :childcare_user
