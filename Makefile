SHELL := bash
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := install
.SUFFIXES:

DATA = numeric_domains--1.0.sql
EXTENSION = numeric_domains
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)

include $(PGXS)
