# AE2Team2
## 運用ルール
- GithubのProjects機能を使って全体を管理
- IsuueのDevelopmentにブランチを紐づける
<img width="985" alt="スクリーンショット 2023-09-05 10 23 32" src="https://github.com/NKotani/AE2Team2/assets/82433118/f4f099b8-b0bc-4379-b24b-86dab03b301a">

- コメントになるべくスクショ貼る
- ブランチ名: Issueの内容のキーワード＋Issue番号を入れる ex) docker_env#1
- プルリク出して1人以上にみてもらう
  - 開発後半(水曜午後から)は無視してもOK
  - プルリク出したらZoomかDiscordで連絡

## 使い方
```bash
docker-compose up -d
```
フロント
```bash
docker container exec -it teamB-client bash
npm install -g @vue/cli
vue create teamb-vue # vue2を選択
cd teamb-vue
yarn serve
```
`http://localhost:8080/` にアクセスすると見える
