-- Chastise and abort if imported in psql.
\echo Use "CREATE EXTENSION numeric_domains" to load this file. \quit

-- SMALLINT domains
CREATE DOMAIN negative_smallint AS SMALLINT
    CONSTRAINT negative_smallint_check
        CHECK (VALUE < 0);
COMMENT ON DOMAIN negative_smallint
    IS 'Negative small integer';
CREATE DOMAIN nonpositive_smallint AS SMALLINT
    CONSTRAINT nonpositive_smallint_check
        CHECK (VALUE <= 0);
COMMENT ON DOMAIN negative_smallint
    IS 'Nonpositive small integer';
CREATE DOMAIN nonzero_smallint AS SMALLINT
    CONSTRAINT nonzero_smallint_check
        CHECK (VALUE <> 0);
COMMENT ON DOMAIN negative_smallint
    IS 'Nonzero small integer';
CREATE DOMAIN nonnegative_smallint AS SMALLINT
    CONSTRAINT nonnegative_smallint_check
        CHECK (VALUE >= 0);
COMMENT ON DOMAIN negative_smallint
    IS 'Nonnegative small integer';
CREATE DOMAIN positive_smallint AS SMALLINT
    CONSTRAINT positive_smallint_check
        CHECK (VALUE > 0);
COMMENT ON DOMAIN negative_smallint
    IS 'Positive small integer';

-- INTEGER domains
CREATE DOMAIN negative_integer AS INTEGER
    CONSTRAINT negative_integer_check
        CHECK (VALUE < 0);
COMMENT ON DOMAIN negative_integer
    IS 'Negative integer';
CREATE DOMAIN nonpositive_integer AS INTEGER
    CONSTRAINT nonpositive_integer_check
        CHECK (VALUE <= 0);
COMMENT ON DOMAIN negative_integer
    IS 'Nonpositive integer';
CREATE DOMAIN nonzero_integer AS INTEGER
    CONSTRAINT nonzero_integer_check
        CHECK (VALUE <> 0);
COMMENT ON DOMAIN negative_integer
    IS 'Nonzero integer';
CREATE DOMAIN nonnegative_integer AS INTEGER
    CONSTRAINT nonnegative_integer_check
        CHECK (VALUE >= 0);
COMMENT ON DOMAIN negative_integer
    IS 'Nonnegative integer';
CREATE DOMAIN positive_integer AS INTEGER
    CONSTRAINT positive_integer_check
        CHECK (VALUE > 0);
COMMENT ON DOMAIN negative_integer
    IS 'Positive integer';

-- BIGINT domains
CREATE DOMAIN negative_bigint AS BIGINT
    CONSTRAINT negative_bigint_check
        CHECK (VALUE < 0);
COMMENT ON DOMAIN negative_bigint
    IS 'Negative big integer';
CREATE DOMAIN nonpositive_bigint AS BIGINT
    CONSTRAINT nonpositive_bigint_check
        CHECK (VALUE <= 0);
COMMENT ON DOMAIN negative_bigint
    IS 'Nonpositive big integer';
CREATE DOMAIN nonzero_bigint AS BIGINT
    CONSTRAINT nonzero_bigint_check
        CHECK (VALUE <> 0);
COMMENT ON DOMAIN negative_bigint
    IS 'Nonzero big integer';
CREATE DOMAIN nonnegative_bigint AS BIGINT
    CONSTRAINT nonnegative_bigint_check
        CHECK (VALUE >= 0);
COMMENT ON DOMAIN negative_bigint
    IS 'Nonnegative big integer';
CREATE DOMAIN positive_bigint AS BIGINT
    CONSTRAINT positive_bigint_check
        CHECK (VALUE > 0);
COMMENT ON DOMAIN negative_bigint
    IS 'Positive big integer';

-- NUMERIC domains
CREATE DOMAIN negative_numeric AS NUMERIC
    CONSTRAINT negative_numeric_check
        CHECK (VALUE < 0);
COMMENT ON DOMAIN negative_numeric
    IS 'Negative real number';
CREATE DOMAIN nonpositive_numeric AS NUMERIC
    CONSTRAINT nonpositive_numeric_check
        CHECK (VALUE <= 0);
COMMENT ON DOMAIN negative_numeric
    IS 'Nonpositive real number';
CREATE DOMAIN nonzero_numeric AS NUMERIC
    CONSTRAINT nonzero_numeric_check
        CHECK (VALUE <> 0);
COMMENT ON DOMAIN negative_numeric
    IS 'Nonzero real number';
CREATE DOMAIN nonnegative_numeric AS NUMERIC
    CONSTRAINT nonnegative_numeric_check
        CHECK (VALUE >= 0);
COMMENT ON DOMAIN negative_numeric
    IS 'Nonnegative real number';
CREATE DOMAIN positive_numeric AS NUMERIC
    CONSTRAINT positive_numeric_check
        CHECK (VALUE > 0);
COMMENT ON DOMAIN negative_numeric
    IS 'Positive real number';

CREATE DOMAIN latitude AS NUMERIC
    CONSTRAINT latitude_check
        CHECK (VALUE BETWEEN -90 AND 90);
COMMENT ON DOMAIN negative_numeric
    IS 'Real-valued latitude';
CREATE DOMAIN longitude AS NUMERIC
    CONSTRAINT longitude_check
        CHECK (VALUE BETWEEN -180 AND 180);
COMMENT ON DOMAIN longitude
    IS 'Real-valued longitude';
