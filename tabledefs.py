INSERT_HOME = """
    INSERT INTO home(%s) VALUES (%s)
"""

INSERT_INTEREST_POINT = """
    INSERT INTO interest_points(coordinate, name, borough) VALUES (%s, %s, %s)
"""

HOME_COLS = ('address', 'building_class', 'sale_price', 'square_footage', 'residential_units', 'year_built', 'borough')

INTEREST_POINT_COLS = ('coordinate', 'name', 'borough')

COPY = """
    
"""

CREATE_HOMES_TABLE = """
    CREATE TABLE homes(
        id SERIAL PRIMARY KEY,
        address TEXT,
        building_class TEXT,
        sale_price INT,
        square_footage SMALLINT,
        residential_units SMALLINT,
        year_built SMALLINT,
        borough TEXT REFERENCES boroughs(name)
    )"""

CREATE_BOROUGHS_TABLE = """ 
    CREATE TABLE boroughs(
    name TEXT PRIMARY KEY,
    grad_rate SMALLINT,
    crime_rate SMALLINT
    )"""

CREATE_INTEREST_POINTS_TABLE = """
    CREATE TABLE interest_points(
        id SERIAL PRIMARY KEY,
        coordinate POINT,
        name TEXT,
        borough TEXT REFERENCES boroughs(name)
    )"""
