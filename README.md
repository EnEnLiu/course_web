# 線上課程平台
### 請做一個簡單的線上課程平台，該平台提供的線上課程都是有時效性，一但過了時效性，使用者就必須重新購買，以再次取用該課程內容。
- 需要有一個後台可以讓管理者管理教育課程。
  1. 可以執行CRUD基本操作
  2. 若使用者不是管理員，則不允許操作
  3. 可以設定課程主題
  4. 可以設定課程價格，幣別
  5. 可以設定課程類型
  6. 可以設定課程上下架
  7. 可以設定課程URL，以及描述
  8. 可以設定課程效期 1天 ~ 1個月
 
- 這個平台可以讓用戶用API購買教育課程。
  1. 購買後須建立購買紀錄
  2. 若課程已下架，則不能進行購買
  3. 若使用者已購買過該課程，且目前還可以取用，則不允許重複購買

- 用戶可以用API瀏覽他所有購買過的課程
  1. 回傳結果要包含課程基本資料
  2. 回傳結果要包含所有跟該課程相關的付款資料
  3. 可以用過濾方式找出特定類型的課程
  4. 可以用過濾方式找出目前還可以上的課程

### 需求：
  1. 需使用 Grape & Grape entity gem
  2. code 需上 Github，並按照 Github flow。
  3. 不用串金流
  4. 使用 rails4 或 rails5

### 加分題：
  1. 使用 Rspec 撰寫測試
  2. 請 deploy 到 Heroku or AWS EC2

![Imgur](https://i.imgur.com/F4mY5ji.jpg)
