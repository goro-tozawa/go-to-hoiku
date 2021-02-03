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
  - 一般ユーザーと施設側ユーザー、それぞれのページに遷移する


   - URL: https://gyazo.com/0e69b89acba27b7339f14f7521b164bd
   - URL: https://gyazo.com/dd692e7687aad2ef085b1654f5a05451


  - 一般ユーザーと施設側ユーザー、それぞれの新規登録画面。（カラムが違うため、deviseで2つのモデルを作成）

   - URL: https://gyazo.com/7e85e521de05f597b48ff580024727c5
   - URL: https://gyazo.com/614c4194fc90a55d7f356fe334bf7bd7
  
  - radio_btn実装

   - URL: https://gyazo.com/b88af878b1ce19ea3d4bba47cc35886a 
  
  - viewの見やすさ
   - https://gyazo.com/3d5a8eaa94ee100de879d45c1bd01083

#### 8. 実装予定の機能

  - API GoogleMap(詳細ページで施設の位置を伝えるため)
  - カレンダー（働ける日程をカレンダーから選択するため）

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

## purchasesテーブル

|  Column | Type | Options |
| ------------ | ------- | ---------- |
| childcare_user | references | null: false, foreign_key: true |
| work | references | null: false, foreign_key: true |

## domiciles
|  Column | Type | Options |
| ------------ | ------- |---------|
| postal_code | string | null: false |
| area_id | integer | null: false |
| municipality | string | null: false |
| address | string | null: false |
|  building_name | string | ----- |
| phone_number | string | null: false |
| gender | string | null: false|
|  purchase | references | null: false |

### Association
- belongs_to :purchase


#### 10. ローカルでの動作作法
 - git clone
   - URL: https://github.com/goro-tozawa/go-to-hoiku.git


 - ローカルで動作させる手順
  - ターミナルでrails s
  - URL: http://localhost:3000/
  

 - パッケージ
  - RUBYGEMS VERSION: 3.0.3
  - RUBY VERSION: 2.6.5 (2019-10-01 patchlevel 114) [x86_64-darwin18]
  - INSTALLATION DIRECTORY: /Users/tozawatagairou/.rbenv/versions/2.6.5/lib/ruby/gems/2.6.0
  - USER INSTALLATION DIRECTORY: /Users/tozawatagairou/.gem/ruby/2.6.0
  - RUBY EXECUTABLE: /Users/tozawatagairou/.rbenv/versions/2.6.5/bin/ruby
  - GIT EXECUTABLE: /usr/bin/git
  - EXECUTABLE DIRECTORY: /Users/tozawatagairou/.rbenv/versions/2.6.5/bin
  - SPEC CACHE DIRECTORY: /Users/tozawatagairou/.gem/specs
  - SYSTEM CONFIGURATION DIRECTORY: /Users/tozawatagairou/.rbenv/versions/2.6.5/etc
  - RUBYGEMS PLATFORMS:
    - ruby
    - x86_64-darwin-18
  - GEM PATHS:
     - /Users/tozawatagairou/.rbenv/versions/2.6.5/lib/ruby/gems/2.6.0
     - /Users/tozawatagairou/.gem/ruby/2.6.0
  - GEM CONFIGURATION:
     - :update_sources => true
     - :verbose => true
     - :backtrace => false
     - :bulk_threshold => 1000
  - REMOTE SOURCES:
     - https://rubygems.org/
  - SHELL PATH:
     - /Users/tozawatagairou/.rbenv/versions/2.6.5/bin
     - /usr/local/Cellar/rbenv/1.1.2/libexec
     - /usr/local/opt/mysql@5.6/bin
     - /Users/tozawatagairou/.rbenv/shims
     - /usr/local/bin
     - /usr/bin
     - /bin
     - /usr/sbin
     - /sbin


  
