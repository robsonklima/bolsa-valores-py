import json
import pymysql

with open('config/config.json') as json_data_file:
    config = json.load(json_data_file)


class DbSymbol:
    @staticmethod
    def insert(name, full_name, owner, stargazers_count, language, description, area):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u"INSERT INTO `repos` (`name`, `full_name`, `owner`, `stargazers_count`," \
                    u" `language`, `description`, `area`) VALUES (%s, %s, %s, %s, %s, %s, %s);"

                cursor.execute(q, (name, full_name, owner, stargazers_count, language, description, area))
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
                sql = u"SELECT * FROM `symbols`" \
                      u" ORDER BY `symbol_id` ASC"
                cursor.execute(sql)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def get_all_with_symbol_codes():
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor(pymysql.cursors.DictCursor) as cursor:
                sql = u"SELECT * FROM `symbols`" \
                      u" WHERE `symbol_code` IS NOT NULL" \
                      u" ORDER BY `symbol_id` ASC"
                cursor.execute(sql)

            return cursor.fetchall()
        except Exception as ex:
            print(ex)
        finally:
            db.close()

    @staticmethod
    def update(symbol_code, symbol_id):
        try:
            db = pymysql.connect(**config["mysql"])
            with db.cursor() as cursor:
                q = u" UPDATE `symbols` " \
                    u" SET `symbol_code`=%s" \
                    u" WHERE `symbol_id` = %s"
                cursor.execute(q, (symbol_code, symbol_id))
                db.commit()
        finally:
            db.close()