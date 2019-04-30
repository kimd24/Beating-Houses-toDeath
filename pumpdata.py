import psycopg2
import csv

import tabledefs as td


def create_tables(cur):
    cur.execute(td.CREATE_BOROUGHS_TABLE)
    cur.execute(td.CREATE_INTEREST_POINTS_TABLE)
    cur.execute(td.CREATE_HOMES_TABLE)

def drop_tables(cur):
    cur.execute("DROP TABLE homes")
    cur.execute("DROP TABLE interest_points")
    cur.execute("DROP TABLE boroughs")

def import_from_csv(cur, table, source, cols = None):
    with open(source, 'r') as f:
        next(f)
        if cols == None:
            cur.copy_from(f, table, sep=',')
        else:
            cur.copy_from(f, table, sep=',', columns = cols)

def main():
    conn = psycopg2.connect("dbname=testdb user=postgres")
    cur = conn.cursor()
    drop_tables(cur)
    create_tables(cur)
    
    import_from_csv(cur, "boroughs", "borough-data-test.csv")
    import_from_csv(cur, "homes", "houses.csv", td.HOME_COLS)
    import_from_csv(cur, "interest_points", "interest_points.csv", td.INTEREST_POINT_COLS)
    
    
    conn.commit()

if __name__ == "__main__":
    main()
