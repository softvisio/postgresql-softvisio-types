EXTENSION = softvisio_types
DATA =	\
	softvisio_types--1.1.0.sql \
	softvisio_types--1.1.0--1.1.5.sql \
	softvisio_types--1.1.5--1.1.6.sql \
	softvisio_types--1.1.6--1.2.0.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
