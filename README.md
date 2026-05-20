# PostgreSQL types extension

## Install / update / drop

```sql
CREATE EXTENSION IF NOT EXISTS softvisio_types;

ALTER EXTENSION softvisio_types UPDATE;

DROP EXTENSION IF EXISTS softvisio_types;
```

## Build

```sh
gmake USE_PGXS=1 install
```
