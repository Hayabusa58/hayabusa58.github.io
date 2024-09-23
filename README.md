# heiki-hecchara.net

## これはなに？
- @h_ya58が管理する個人ホームページです。
- ホームページとブログを兼ねています。
- Github Pages + hugoで運用しています。

## 新しいポストの作成と投稿(自動)

```
$ ./make-post.bat <記事を格納するディレクトリ名>
$ ./publish-post.bat <投稿時のコミットメッセージ>
$ git push
```

## 新しいポストの作成と投稿(手動)

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

## 環境構築
このリポジトリをcloneした後，

```
$ git submodule add https://github.com/ertuil/erblog themes/erblog
$ git submodule init
$ git submodule update
```

でthemesディレクトリに必要なファイルが揃う。
`fatal: 'themes/erblog' already exists in the index`と怒られたら，

```
$ git submodule deinit -f themes/erblog
$ git rm -f themes/erblog
```
これで一旦リセット。