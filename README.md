# PostgreSQL int53 domain extension

## Install / update / drop

```
CREATE EXTENSION IF NOT EXISTS softvisio_int53;

ALTER EXTENSION softvisio_int53 UPDATE;

DROP EXTENSION IF EXISTS softvisio_int53;
```

## Build

```
gmake USE_PGXS=1 install
```

## Use

```
CREATE TABLE test (
    id int53 PRIMARY KEY
);
```
