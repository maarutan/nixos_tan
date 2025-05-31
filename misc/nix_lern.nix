#---------------------------------------------
#           NIX LANGUAGE CHEAT SHEET
#---------------------------------------------

# ── Types ────────────────────────────────────
# Strings
"a string"

# Integers
42

# Booleans
true
false

# File paths
./modules/example.nix

# ── Lists ────────────────────────────────────
[ 1 2 3 ]
[
  "apple"
  "banana"
  "carrot"
]

# ── Attribute Sets (like dicts) ──────────────
{
  name = "Maaru";
  age = 17;
}.name  # returns "Maaru"

# ── let / in (local bindings) ────────────────
let
  name = "Maaru";
  age = 17;
in
{
  inherit name age;
}

# ── Importing files ──────────────────────────
let
  config = import ./config.nix;
in
  config.someValue

# ── Functions ────────────────────────────────

# 1. Simple lambda
let
  square = x: x * x;
in
  square 5  # => 25

# 2. Named arguments (like a record)
let
  area = { width, height }: width * height;
in
  area { width = 4; height = 6; }  # => 24

# 3. Variadic arguments with ...
let
  perimeter = { a, ... }@args: 2 * (a + args.b);
in
  perimeter { a = 3; b = 7; }  # => 20

# ── Using `with` ─────────────────────────────
let
  set = {
    x = "foo";
    y = "bar";
  };
in
with set;
  x + y  # => "foobar"

# ── Builtins ─────────────────────────────────
let
  value = builtins.trace "Debug output" (1 + 1);
in
  value  # => 2, also prints trace

# Read a file
# builtins.readFile ./somefile.txt

# Parse JSON string
# builtins.fromJSON "{ \"hello\": \"world\" }"

# ── Eval and Build (CLI) ─────────────────────
# $ nix-instantiate --eval --expr '1 + 2'
# $ nix-instantiate --eval cheatsheet.nix
# $ nix-build default.nix

# ── REPL ─────────────────────────────────────
# $ nix repl
# nix-repl> let x = 5; in x * 2

# ── Nix flake support? ───────────────────────
# That's beyond this file — let me know if you want a flake.nix cheat sheet.

# EOF

