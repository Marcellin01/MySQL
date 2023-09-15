import pymysql
import pandas as pd

# 資料庫連線設定
db_config = {
    "host": "localhost",
    "user": "Marcel",
    "password": "root",
    "database": "TNL"
}

# 建立資料庫連線
conn = pymysql.connect(**db_config)

try:
    # 使用 Pandas 导出数据到 CSV 文件（不包含列名）
    sql = "SELECT * FROM survey_whitelist_final"
    df = pd.read_sql(sql, conn)
    df.to_csv('/Users/marcel/WhiteList_2.csv', index=False, header=True, quoting=1)

finally:
    conn.close()

print("導出完成")