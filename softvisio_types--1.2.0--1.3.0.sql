\echo 'You need to use the following commands:'
\echo 'CREATE EXTENSION IF NOT EXISTS softvisio_types;'
\echo 'ALTER EXTENSION softvisio_types UPDATE;'
\echo \quit

CREATE OR REPLACE FUNCTION lo_size ( p_lo_oid oid ) RETURNS int53 STABLE AS $$
DECLARE
    v_fd int4;
    v_size int53;
BEGIN
    -- open the large object in read mode (mode 262144)
    v_fd = lo_open( p_lo_oid, 262144 );

    IF ( v_fd < 0 ) THEN
        RAISE EXCEPTION 'Failed to open large object %', p_lo_oid;
    END IF;

    -- seek to the end of the object (offset 0, whence 2) and get the position
    v_size = lo_lseek( v_fd, 0, 2 );

    -- close the large object
    IF ( lo_close( v_fd ) != 0 ) THEN
        RAISE EXCEPTION 'Failed to close large object %', p_lo_oid;
    END IF;

    RETURN v_size;
END;
$$ LANGUAGE plpgsql;
