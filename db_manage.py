import sqlite3

# db接続
# 初回実行の際はdb作成後接続
dbname = 'coc_charadata.db'
db_connect = sqlite3.connect(dbname)

# カーソルオブジェクト作成
# こいつをいじっていく
cursor = db_connect.cursor()

try:
  # CREATE

  # INSERT

  # READ

db_connect.commit()
db_connect.close()