# Define Variables, can be overriden from cli
arg1 := "foo"
stack := ""

# The @ in front prevents the line from being printed before executed

# Set listing of recipes as default; If you just type `just`
default:
  @just --list

# Override vars from cli:  just arg1="My Value"
cliarg:
  echo Cli Arg {{ arg1 }}
  @echo {{capitalize(arg1)}}
  @echo {{arch()}}

venv:
  test -d .venv || python3 -m venv .venv

install: venv
  # Activate venv and install somthing inside
  .venv/bin/pip install --upgrade pip
  .venv/bin/pip install requests

# Recipes can be of various languages
python-recipe:
  #!/usr/bin/env python3
  import sys
  print(sys.version)

diff:
  # Activate venv and install somthing inside
  .venv/bin/pip cdktf diff {{ stack }}