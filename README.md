# サービス概要

このアプリは、購入したファッションアイテム（服・靴など）を簡単に管理できるサービス です。
写真を撮って登録すると、購入日や価格、ブランド、メモなどを記録できます。
また、一定期間が経過すると、「まだ必要か？」を通知 し、不要ならフリマ出品や買取の機会を提案。

さらに、クローゼットの中身をスマホで確認できるので、「似た服を買ってしまう失敗」や「持っている服を忘れる」ことを防ぎます。
シンプルな管理で、あなたのファッションライフをもっとスマートに！

## このサービスへの思い・作りたい理由

私はファッションが好きで、よく洋服を購入します。しかし、好みや流行が変わると、着なくなった洋服が増えていきます。
その結果、不要になった服をフリマアプリで出品することもありますが、「いつ、いくらで、どこで購入したか」が分からないことが多く、スムーズに売買ができませんでした。
さらに、似たような服を買ってしまうこともあり、店舗で新しい服を買う前に一度家に戻ってクローゼットを確認しなければならない場面も多々ありました。

これらの問題を解決するため作成したいと思いました。

## ユーザー層について

- 洋服好きの人
- フリマアプリを利用する人

## サービスの利用イメージ

- 利用ガイド
利用ガイドをはじめに確認してもう。ユーザーによってはフリマ出品よりもアイテムの管理を目的にする場合が考えられるため、利用目的に応じた利用方法を記載した利用ガイドページを設ける。

- 購入したアイテムを登録
商品を購入した際に、スマホで写真を撮影し、購入日や金額、購入店舗などの情報を簡単に追加。タグもつけて、自分だけのカテゴリーに整理できます。

- クローゼットを活用して賢く購入
新しいアイテムを買う前にアプリにログインし、「自分がすでに持っているアイテム」をタグ機能やカテゴリー機能を利用してクローゼットを確認。これで、無駄な重複買いを防ぎ、賢く買い物ができます。

- 不要になったアイテムを簡単に出品
着なくなった服をフリマアプリに出品する時、アプリのクローゼットからアイテムを選んで確認。購入情報がすぐにわかるので、スムーズに出品でき、効率よく売買ができます。

## ユーザーの獲得について

- MattermostのRUNTEQコミュニティ内で宣伝
- RUNTEQソーシャルポートフォリオで宣伝

## サービスの差別化ポイント・推しポイント

- 服の整理と出品の一元管理
多くの既存アプリでは、服の管理とフリマアプリへの出品は別々に行われることが一般的です。しかし、このアプリは自分のクローゼットを管理しながら、不要になったアイテムをスムーズにフリマに出品できる点が大きな特徴です。購入情報（購入日、価格、店舗など）が登録されているため、出品準備が簡単で効率的になります。

- 使わないアイテムへの通知機能
一定期間使用していないアイテムや、着なくなったアイテムに対して通知を送ることで、ユーザーは不要なアイテムを整理したり、フリマに出品することができます。これにより、アイテムが無駄に残り続けることを防ぎます。

## 機能候補
MVP時点
- ユーザー登録・ログイン機能
- 写真を撮影し、購入日、購入店舗、購入金額、タグ、カテゴリなどを登録できる機能。
- 登録したアイテムを一覧で表示し、簡単に管理できる画面。
- 登録した商品の情報を編集したり、不要なアイテムを削除する機能。
- 出品準備のために、商品情報がすぐにわかる画面を提供。例えば、購入日、価格、店舗などを確認できるようにする。

本リリースまで
- フリマアプリ連携機能。メルカリやヤフオクなどのフリマアプリに出品するための連携機能。商品の情報を直接アプリから転送できるようにする。
- より詳細なタグやカテゴリー分けを可能にし、ユーザーがアイテムをより細かく分類できる機能
- アイテムごとのお気に入り度を記録し、クローゼットの整理を助ける機能。
- 一定期間着ていないアイテムや、使用頻度が低いアイテムに対して通知を送る機能。
- クローゼットや出品したアイテムをSNSで簡単にシェアできる機能。
- 写真の内容を解析して自動でアイテムにタグを付ける機能（例：ブランド名やアイテムの種類など）。

## 機能の実装方針予定
フリマアプリ連携機能（メルカリ、ヤフオクなどのAPI使用）
- AIによる自動タグ付け機能（Google VisionやAmazon Rekognitionなど）
- ソーシャルシェア機能（Facebook、Twitter、Instagramなどが提供するAPI）
- クローゼット整理通知機能（RailsのActive Jobを使用: RailsのActive JobとSidekiqなどのバックグラウンドジョブを利用）
- フリマ出品情報表示のカスタマイズ機能

## 技術スタック

カテゴリ | 技術
フロントエンド | Rails 7.2.1 / TailwindCSS / JavaScript
バックエンド | Rails 7.2.1 (Ruby 3.2.3)
データベース | PostgreSQL
開発環境 | Docker
インフラ | Heroku
フリマアプリ連携 | メルカリAPI / ヤフオクAPI

### 画面遷移図
Figma：https://www.figma.com/board/i1ToZI3J1WItCh7nO4hAYD/Visily-Export_05-03-2025_11-29?node-id=0-1&t=qv6XDaTyqDPF2MQB-1

### READMEに記載した機能
- [ ] ユーザー登録機能
- [ ] ログイン機能
- [ ] パスワード変更機能
- [ ] メールアドレス変更機能
- [ ] アイテム登録機能（購入日、購入店舗、購入金額、タグ、カテゴリ）
- [ ] アイテム一覧
- [ ] アイテム詳細
- [ ] アイテム編集
- [ ] お気に入り機能

### メールアドレス・パスワード変更確認項目
直接変更できるものではなく、一旦メールなどを介して専用のページで変更する画面遷移になっているか？
- [ ] メールアドレス
- [ ] パスワード

### 各画面の作り込み
画面遷移だけでなく、必要なボタンやフォームが確認できるくらい作り込めているか？
- [ ] 作り込みはある程度完了している（Figmaを見て画面の作成ができる状態にある）

### ER図の注意点
- [ ] プルリクエストに最新のER図のスクリーンショットを画像が表示される形で掲載できているか？
- [ ] テーブル名は複数形になっているか？
- [ ] カラムの型は記載されているか？
- [ ] 外部キーは適切に設けられているか？
- [ ] リレーションは適切に描かれているか？多対多の関係は存在しないか？
- [ ] カラムの型は記載されているか？
- [ ] STIは使用しないER図になっているか？
- [ ] Postsテーブルにpoast_nameのように"テーブル名+カラム名"を付けていないか？

### issue概要
