import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbTimeSeries:
    @staticmethod
    def insert(time_serie, symbol, open, high, low, close, volume):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `time_series` (`time_serie`, `symbol`, `open`, `high`, `low`, `close`, `volume`" \
                    u") VALUES (%s, %s, %s, %s, %s, %s, %s);"

                cursor.execute(q, (time_serie, symbol, open, high, low, close, volume))
                db.commit()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_all():
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                sql = u"SELECT * FROM `time_series` ORDER BY `time_serie` DESC"
                cursor.execute(sql)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()