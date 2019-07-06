# numeric_domains

A PostgreSQL extension defining custom numeric domains

## Getting Started

### Prerequisites

This extension was developed using PostgreSQL 10, but should work for all recent versions.

### Installation

Copy `numeric_domains.control` and `numeric_domains--1.0.sql` into the `SHAREDIR/extension` directory. Alternatively, run the `Makefile`:

```Shell
    make install
```

Then, use `CREATE EXTENSION` to install:

```PostgreSQL
    CREATE EXTENSION numeric_domains;
```

## License

Licensed under the MIT License (see [LICENSE.md](LICENSE.md)).
