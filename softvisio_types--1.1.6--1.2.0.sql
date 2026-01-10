\echo 'You need to use the following commands:'
\echo 'CREATE EXTENSION IF NOT EXISTS softvisio_types;'
\echo 'ALTER EXTENSION softvisio_types UPDATE;'
\echo \quit

CREATE OR REPLACE FUNCTION lo_size ( oid ) RETURNS integer AS $$
DECLARE
    fd integer;
    sz integer;
BEGIN
    -- open the large object in read mode (mode 262144)
    fd = lo_open($1, 262144);

    IF ( fd < 0 ) THEN
        RAISE EXCEPTION 'Failed to open large object %', $1;
    END IF;

    -- seek to the end of the object (offset 0, whence 2) and get the position
    sz = lo_lseek( fd, 0, 2 );

    -- close the large object
    IF ( lo_close( fd ) != 0 ) THEN
        RAISE EXCEPTION 'Failed to close large object %', $1;
    END IF;

    RETURN sz;
END;
$$ LANGUAGE plpgsql;
