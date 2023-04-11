# heiki-hecchara.net

## これはなに？
- @h_ya58が管理する個人ホームページです。
- ホームページとブログを兼ねています。
- Github Pages + hugoで運用しています。

## 新しいポストの作成
毎回忘れるので自分用に。

1. `$ hugo new post/post-title/index.md`を実行する。
    - 画像を埋め込まない場合，`/post`直下に`post-title.md`を作っても良い。
2. `$ hugo server -D`でローカルサーバ立ち上げ。
3. 記事を書く。
    - 画像は同じディレクトリに格納する。
4. 書き上がったら，`index.md`の冒頭のオプションを`draft: false`に変更し，オプションなしでhugoコマンドを実行するとHTMLが生成される。
    - `-D`オプションをつけると`draft: true`になっている記事も出力される。
5. `$ git push`で公開される。

## ポストの削除
- `post/post-title`以下を削除してhugoコマンドを実行すればOK。