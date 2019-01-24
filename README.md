### Ruby version: 2.5.1

### Rails version: 5.2.0

### データベース: MySQL Ver 8.0.12

### 実行環境: Debian GNU/Linux 9

### 管理者用アプリケーションについて
- 管理者用アプリケーション（以下アプリ）は、Ruby on Railsで作成してあります。rubyのバージョンは、2.5.1、Railsのバージョンは5.2.0を使用しています。また、データベースはMySQLを使用しています。   

- アプリを動作させる環境は、Docker Commposeを用いて構築してあります。   
なので、DockerおよびDocker Composeのインストールが必要となります。
わからない人は、[このサイト](https://qiita.com/youtanagai/items/ff67ceff5497a0e0b1af)を参考にインストールしてください。   
アプリを立ち上げるための手順は以下のとおりです。   
　起動方法：`docker-compose up -d` ※初回はbuildが発生するので多少時間がかかります。   
　データベースの作成（初回のみ）：`docker-compose run web rake db:create` -> `docker-compose run web rake db:migrate`   
　管理者の作成：http://ホスト名またはIPアドレス:3000/users/sign_up にアクセスしてユーザを作成する。   
　その後 `docker exec -it フォルダ名_web_1 bash` を実行してコンテナに入り、`rails console`を実行する。   
　そこで `user = User.find(1)` を実行した後に `user.update_attribute(:admin_flg, true)` を実行する。   
　これで管理者が登録される。あとは、http://ホスト名またはIPアドレス:3000/admin にアクセスすると管理画面へ入ることができる。

- ユーザの登録やログの参照は、上記のアプリの管理画面から行うことができます。

### 以下参考サイト
- [rails admin](https://webird-programming.tech/archives/235)

- [rails admin japanese](https://qiita.com/da-shi/items/aa76afdea3c528a9b128)

- [mysql setting](https://qiita.com/yensaki/items/9e453b7320ca2d0461c7)

- [docker-compose](https://qiita.com/jshimazu/items/ba13ce87dfdb11e2d1d9)
