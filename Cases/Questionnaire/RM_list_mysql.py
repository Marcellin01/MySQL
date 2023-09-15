import pymysql

# 資料庫連線設定
db_config = {
    "host": "localhost",
    "user": "Marcel",
    "password": "root",
    "database": "TNL"
}

# 設定每個批次處理的記錄數量
batch_size = 1000
start_offset = 0
processed_records = 0  # 已處理的記錄數
total_records = 96701  # 總記錄數

# 建立資料庫連線
conn = pymysql.connect(**db_config)

try:
    while start_offset < total_records:
        # 建立UPDATE語句，使用子查詢，並在子查詢中使用LIMIT和OFFSET
        update_query = f"""
        UPDATE survey_whitelist AS whitelist
        JOIN (
            SELECT rm.email, rm.`Panelist ID`
            FROM RM_list AS rm
            LIMIT {batch_size}
            OFFSET {start_offset}
        ) AS subquery ON whitelist.email = subquery.email
        SET whitelist.`Panelist ID` = subquery.`Panelist ID`
        """

        # 建立遊標
        cursor = conn.cursor()

        try:
            # 執行 SQL 更新
            cursor.execute(update_query)
            conn.commit()

            # 更新處理過的記錄數
            processed_records += cursor.rowcount

            # 顯示目前處理到第幾筆資料
            print(f"已處理 {processed_records} 筆記錄")

        except Exception as e:
            print(f"錯誤發生，中斷在第 {processed_records} 筆記錄。")
            print(str(e))
            break

        finally:
            # 關閉遊標
            cursor.close()

        # 更新偏移量，以處理下一個批次
        start_offset += batch_size

finally:
    conn.close()

print("更新完成")
