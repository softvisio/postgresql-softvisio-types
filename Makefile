EXTENSION = softvisio_types
DATA =	\
	softvisio_types--1.0.0.sql \
	softvisio_types--1.0.0--1.1.0.sql \
	softvisio_types--1.1.0.sql \
	softvisio_types--1.1.0--1.1.1.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
