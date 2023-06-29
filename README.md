# PostgreSQL types extension

## Install / update / drop

```
CREATE EXTENSION IF NOT EXISTS softvisio_types;

ALTER EXTENSION softvisio_types UPDATE;

DROP EXTENSION IF EXISTS softvisio_types;
```

## Build

```
gmake USE_PGXS=1 install
```
