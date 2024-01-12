require 'pg'

# データベース接続情報
conn_params = {
  host: 'localhost',
  dbname: 'development_db',
  user: 'dev_user',
  password: 'dev_password'
}

begin
  # データベースに接続
  conn = PG.connect(conn_params)

  # SQLクエリの実行
  result = conn.exec('SELECT * FROM todo')

  # 結果の出力
  result.each do |row|
    puts "ID: #{row['id']}, Title: #{row['title']}"
  end

ensure
  # データベース接続を閉じる
  conn&.close
end
