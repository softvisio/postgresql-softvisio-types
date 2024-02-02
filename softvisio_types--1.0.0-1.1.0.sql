\echo 'You need to use the following commands:'
\echo 'CREATE EXTENSION IF NOT EXISTS softvisio_types;'
\echo 'ALTER EXTENSION softvisio_types UPDATE;'
\echo \quit

ALTER DOMAIN int53 RENAME TO int53_deprecated;

CREATE DOMAIN int53 AS int8 CHECK ( VALUE >= -9007199254740991 AND VALUE <= 9007199254740991 );
