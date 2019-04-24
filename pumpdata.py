import psycopg2
import tabledefs as td


def create_tables(cur):
    cur.execute(td.CREATE_BOROUGHS_TABLE)
    cur.execute(td.CREATE_INTEREST_POINTS_TABLE)
    cur.execute(td.CREATE_HOMES_TABLE)

def drop_tables(cur):
    cur.execute("DROP TABLE homes")
    cur.execute("DROP TABLE interest_points")
    cur.execute("DROP TABLE boroughs")

def main():
    conn = psycopg2.connect("dbname=testdb user=postgres")
    cur = conn.cursor()
    #drop_tables(cur)
    create_tables(cur)


    conn.commit()

if __name__ == "__main__":
    main()
