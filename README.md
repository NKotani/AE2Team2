# AE2Team2
## 運用ルール
* [GithubのProjects機能](https://github.com/users/NKotani/projects/3)を使って全体を管理
* IsuueのDevelopmentにブランチを紐づける
<img width="985" alt="スクリーンショット 2023-09-05 10 23 32" src="https://github.com/NKotani/AE2Team2/assets/82433118/f4f099b8-b0bc-4379-b24b-86dab03b301a">

* コメントになるべくスクショ貼る
* ブランチ名: Issueの内容のキーワード＋Issue番号を入れる ex) docker_env#1
* プルリク出して1人以上にみてもらう
  * 開発後半(水曜午後から)は無視してもOK
  * プルリク出したらZoomかDiscordで連絡
  * なるべく同じ担当の人がみた方がわかりやすいかも

## 使い方
```bash
git clone https://github.com/shinjiezumi/vue-go-samples.git
cd vue-go-samples
docker-compose up -d
```

以下が毎回必要か不明
```bash
docker-compose exec api bash
sql-migrate up # 失敗したらDockerを立ち上げ直すとうまくいくかも
cp .env.example .env # Secretなどを設定
exit
```

```bash
docker-compose exec front npm install
```

## サーバー起動

```bash
bash scripts/start-api.sh
bash scripts/start-front.sh
```

`http://localhost:8080` 開く

## 終了
```bash
docker-compose down
```

コンテナを0から構築し直したいときは以下のコマンド
```bash
docker-compose down --rmi all
```

## 参考
https://github.com/shinjiezumi/vue-go-samples
