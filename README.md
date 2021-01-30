## users テーブル

| Column | Type | Options |
| ---------- | -------- | -------- |
| name | string | null: false |
| name_kana | string | null: false|
| birthday | date | null: false |
| nickname | string | null: false|
| postal_code | string | null: false |
| email | string | null: false | unique: true |
| encrypted_password | string | null: false |
| qualification | string | null: false |
<!-- 資格を持っているか -->
| gender | string | null: false|
<!-- 男女でできる仕事が違う可能性があるため -->
| self_introduction | text | -------- |
- has_many :works
- belongs_to :childcare_user

## childcare_users テーブル

| Column | Type | Options |
| ---------- | -------- | -------- |
| facility_name| string | null: false |
<!-- 施設名 -->
| facility_name_kana | string | null: false|
| business_form | string | null: false|
<!-- 事業形態 -->
| facility_address | string | null: false|
| facility_phone_number | string | null: false|
| representative | string | null: false|
<!-- 代表者 -->
| representative_phone_number | string | null: false|
| times | integer | null: false |
| encrypted_password | string | null: false |
| self_introduction | text | -------- |
- has_many :works
- has_many :user

## works
<!-- 検索機能を追加実装したらいいかも？ -->
| Column | Type | Options |
| ---------- | -------- | -------- |
| area_id | integer | null: false |
| facility_name| integer | null: false |
| works_id| integer | null: false |
| times_id | integer | null: false |
| childcare_user | references | null: false |

- belongs_to :user
- belongs_to :childcare_user

## contact_us
<!-- 問い合わせ -->


### 要件定義
  1. アプリケーション概要 
  2. URL:
  3. テスト用アカウント
  4. 利用方法
  5. 目標にした課題
  6. 洗い出した要件
  7. 実装した機能についてのGIFと説明
  8. 実装予定の機能
  9. データベース設計
10. ローカルでの動作作法

#### 1.アプリケーション概要
 「go-to-hoiku」は子どもに関わる施設が一般ユーザーに隙間時間に仕事を依頼するアプリです。  
 このアプリで行えることは主に3つあります。  
   