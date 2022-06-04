
### Making your own Oracles

(instructions and code by Elizabeth Polgreen)

The current version of Delphi supports oracles that accept input values as integer/decimals and return values as SMT-LIB compliant constant literals. 

For instance:

* booleans: `true` or `false`
* bitvectors: input as integers, for instance `15`. Return as SMT-lib bitvectors, for instance `(_ bv12 32)`
* floats: input as decimcals, for instance `15.0`. Return as SMT-lib floating points, for instance `((_ to_fp 8 24) roundNearestTiesToEven 1.0)`
* integers: input as integers, for instance `15`. Return as integers, for instance `15`. 

The utils directory contains the basic skeleton of an oracle.
