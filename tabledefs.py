CREATE_HOMES_TABLE = """
    CREATE TABLE homes(
        id SERIAL PRIMARY KEY,
        address TEXT,
        building_class TEXT,
        sale_price INT,
        square_footage SMALLINT,
        residential_units SMALLINT
    )

"""

CREATE_BOROUGHS_TABLE = """ 
    CREATE TABLE boroughs(
    name TEXT PRIMARY KEY,
    grad_rate SMALLINT,
    crime_rate SMALLINT
    ) """

CREATE_INTEREST_POINTS_TABLE = """
    CREATE TABLE interest_points(
        id SERIAL PRIMARY KEY,
        coordinate POINT,
        name TEXT,
        borough TEXT REFERENCES boroughs(name)
    )
"""
