# Ubuntu上でのPostgreSQLのセットアップとRubyスクリプトの実行ガイド

このドキュメントは、Ubuntu環境でPostgreSQLデータベースを設定し、Rubyスクリプトを使用してデータベース操作を行うためのステップバイステップガイドです。

## 前提条件
- Ubuntuがインストールされた環境
- Rubyの基本的な知識とインストール済みのRuby環境
- PostgreSQLデータベースの基本的な知識

## 目次
1. PostgreSQLのRubyクライアント（`pg`）のインストール
2. DBeaverを使用したデータベーステーブルの作成
3. Rubyスクリプトの実行

## 1. PostgreSQLのRubyクライアント（`pg`）のインストール
`pg` ジェムは、RubyからPostgreSQLデータベースに接続するためのクライアントライブラリです。以下のコマンドでインストールできます。

```bash
gem install pg
```

## 2. DBeaverを使用したデータベーステーブルの作成
DBeaverは強力なデータベース管理ツールで、テーブルの作成やデータの挿入などの操作を簡単に行えます。以下のSQLステートメントをDBeaverで実行し、`todo` テーブルを作成し、初期データを挿入してください。

```sql
CREATE TABLE todo (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

INSERT INTO todo (title) VALUES ('買い物に行く');
INSERT INTO todo (title) VALUES ('犬の散歩');
INSERT INTO todo (title) VALUES ('プログラミングの勉強');
```

## 3. Rubyスクリプトの実行
以下のRubyスクリプトは、PostgreSQLデータベースに接続し、`todo` テーブルからデータを取得して出力します。このスクリプトを `main.rb` として保存し、次のコマンドで実行します。

```bash
ruby main.rb
```

**出力例:**

```
ID: 1, Title: 買い物に行く
ID: 2, Title: 犬の散歩
ID: 3, Title: プログラミングの勉強
```

このガイドに従うことで、Ubuntu上でPostgreSQLデータベースを設定し、Rubyスクリプトを使用してデータベース操作を行うことができます。

