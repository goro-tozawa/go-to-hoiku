### 要件定義
  1. アプリケーション概要 
  2. URL
  3. テスト用アカウント
  4. 利用方法
  5. 目標にした課題
  6. 洗い出した要件
  7. 実装した機能についてのGIFと説明
  8. 実装予定の機能
  9. データベース設計
10. ローカルでの動作作法

#### 1.アプリケーション概要
 「go-to-hoiku」は一般ユーザーが子どもに関わる施設で簡単に働くことのできるアプリです。
 
  このアプリで行えることは主に3つあります。

   -  一般ユーザーは自分の好きな時間に働くことができる
   -  施設側は好きな時間帯に一般ユーザーを雇うことができる
   -  一般ユーザーと施設側がチャットルームを通じてコミュニケーションをとることができる

   このアプリを使用することで一般ユーザーは隙間時間に子どもと関わる場所で働くことができ、施設側は人手不足による正職員の負担や高額な派遣会社との契約をしないなどのメリットがある。

#### 2.URL
  heroku : https://go-to-hoiku.herokuapp.com/  

#### 3.テスト用アカウント
   - 一般ユーザー 
  アカウント名: test01
  password: test01


   - 施設ユーザー 
  アカウント名: test02
  password: test02

#### 4.利用方法
  - 一般ユーザー
   - 一般ユーザーのトップページに遷移し、新規登録を行う 
   - トップページから「仕事を探す」ボタンを押し、自分に合った施設を探す。 
   - 仕事を選択したら施設からの連絡を待ち、日程や仕事内容を確認する。

  - 施設ユーザー
   - 施設ユーザーのトップページに遷移し、新規登録を行う 
   - トップページから「仕事を依頼する」ボタンを押し、自分に合った施設を探す。 
   - 仕事を依頼したら一般ユーザーからの登録を待ち、日時、連絡を取り合い、日程や仕事内容を確認する。

#### 5.目指した目標
  - 「農how」のように一般ユーザーの隙間時間に子どもに関わる施設で働いてもらうことで施設が抱えている人手不足の問題を解消する目的で「go-to-hoiku」を作成。  
  - 引用
  > 「農how」 URL:https://agritrio.co.jp/nouhow.html


  -  潜伏保育士（保育士の資格は持っているが、労働環境や人間関係の悩みなどの理由で働いていない保育士）のハードルを下げ、自分の好きな時間に働き、子どもと関われる環境づくりをプログラミングという観点から解決することが目標。

#### 6.洗い出した要件
  - 一般ユーザーと施設ユーザーの2つのユーザー管理機能を実装
  - 一般ユーザーが仕事を探し、選択することのできるページ
  - 施設ユーザーがことができるページ

#### 7. 実装した機能についてのGIFと説明

#### 8. 実装予定の機能

#### 9. データベース設計

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

## works
<!-- 検索機能を追加実装したらいいかも？ -->
| Column | Type | Options |
| ---------- | -------- | -------- |
| work_title | string | null: false|
| facility_name| string | null: false|
| job_description | string | null: false|
<!-- 仕事内容 -->
| person | integer | null: false |
<!-- 募集人数 -->
| recruiting_days| datetime | null: false |
| recruiting_times| integer | null: false |
| hourly_wage | integer | null: false |
| childcare_user | references | null: false |

- belongs_to :user
- belongs_to :childcare_user


#### 10. ローカルでの動作作法