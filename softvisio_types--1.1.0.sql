\echo 'You need to use the following commands:'
\echo 'CREATE EXTENSION IF NOT EXISTS softvisio_types;'
\echo 'ALTER EXTENSION softvisio_types UPDATE;'
\echo \quit

DO $$ BEGIN

    IF to_regtype( 'int53' ) IS NULL THEN
        CREATE DOMAIN int53 AS int8 CHECK ( VALUE >= -9007199254740991 AND VALUE <= 9007199254740991 );
    END IF;

    IF to_regtype( 'number1' ) IS NULL THEN
        CREATE DOMAIN number1 AS numeric( 16, 1 ) CHECK ( VALUE > -1125899906842624 AND VALUE < 1125899906842624 );
    END IF;

    IF to_regtype( 'number2' ) IS NULL THEN
        CREATE DOMAIN number2 AS numeric( 16, 2 ) CHECK ( VALUE > -70368744177664 AND VALUE < 70368744177664 );
    END IF;

    IF to_regtype( 'number3' ) IS NULL THEN
        CREATE DOMAIN number3 AS numeric( 16, 3 ) CHECK ( VALUE > -8796093022208 AND VALUE < 8796093022208 );
    END IF;

    IF to_regtype( 'number4' ) IS NULL THEN
        CREATE DOMAIN number4 AS numeric( 16, 4 ) CHECK ( VALUE > -1099511627776 AND VALUE < 1099511627776 );
    END IF;

    IF to_regtype( 'number5' ) IS NULL THEN
        CREATE DOMAIN number5 AS numeric( 16, 5 ) CHECK ( VALUE > -68719476736 AND VALUE < 68719476736 );
    END IF;

    IF to_regtype( 'number6' ) IS NULL THEN
        CREATE DOMAIN number6 AS numeric( 16, 6 ) CHECK ( VALUE > -8589934592 AND VALUE < 8589934592 );
    END IF;

    IF to_regtype( 'number7' ) IS NULL THEN
        CREATE DOMAIN number7 AS numeric( 16, 7 ) CHECK ( VALUE > -1073741824 AND VALUE < 1073741824 );
    END IF;

    IF to_regtype( 'number8' ) IS NULL THEN
        CREATE DOMAIN number8 AS numeric( 16, 8 ) CHECK ( VALUE > -134217728 AND VALUE < 134217728 );
    END IF;

    IF to_regtype( 'number9' ) IS NULL THEN
        CREATE DOMAIN number9 AS numeric( 16, 9 ) CHECK ( VALUE > -8388608 AND VALUE < 8388608 );
    END IF;

    IF to_regtype( 'number10' ) IS NULL THEN
        CREATE DOMAIN number10 AS numeric( 16, 10 ) CHECK ( VALUE > -1048576 AND VALUE < 1048576 );
    END IF;

    IF to_regtype( 'number11' ) IS NULL THEN
        CREATE DOMAIN number11 AS numeric( 16, 11 ) CHECK ( VALUE > -131072 AND VALUE < 131072 );
    END IF;

    IF to_regtype( 'number12' ) IS NULL THEN
        CREATE DOMAIN number12 AS numeric( 16, 12 ) CHECK ( VALUE > -8192 AND VALUE < 8192 );
    END IF;

    IF to_regtype( 'number13' ) IS NULL THEN
        CREATE DOMAIN number13 AS numeric( 16, 13 ) CHECK ( VALUE > -1024 AND VALUE < 1024 );
    END IF;

    IF to_regtype( 'number14' ) IS NULL THEN
        CREATE DOMAIN number14 AS numeric( 16, 14 ) CHECK ( VALUE > -128 AND VALUE < 128 );
    END IF;

    IF to_regtype( 'number15' ) IS NULL THEN
        CREATE DOMAIN number15 AS numeric( 16, 15 ) CHECK ( VALUE > -8 AND VALUE < 8 );
    END IF;

    IF to_regtype( 'number16' ) IS NULL THEN
        CREATE DOMAIN number16 AS numeric( 16, 16 ) CHECK ( VALUE > -1 AND VALUE < 1 );
    END IF;

END $$;
