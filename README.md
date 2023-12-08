# Just is like make but better

See <https://github.com/casey/just> or <https://just.systems/>

* You write a `justfile` that holds your recipes. (Exactly like the Makefile)
* * will look for that justfile also in parent directories
* * Naming is case insesitive. `justfile`, `Justfile`, `jUstFile` are all valid
* * Can even be `.justfile`
* List all recpies `just -l`
* Running `just` without arguments executes the first recipe
* Recipes stop executing if one command fails
* * Unless you add `-`in front of it, which will not stop the recipe if the cmd fails
* Recipes can depend on each other
* Run muliple recipes from the cli in the order given
* Use variables withinjustfile through `{{ }}`
* Provides a bunch of builtin functions
* * `arch()`, `env_key()`, `trim(s)` and much more.
* Recipe can be annotated to change behaviour
* Easily takes arguments from the cli
* Recipes can easily be written in other languages!

* Use venvs in recipes:

```Makefile
venv:
  # Create venv if it doesn't exist
  # test -d venv || virtualenv -p python3 --no-site-packages venv
  test -d .venv || python3 -m venv .venv

install: venv
  # Activate venv and install somthing inside
  .venv/bin/pip install --upgrade pip
  .venv/bin/pip install -r requirements.txt
```


## Useful resources

* Docs <https://just.systems/man/en/>
* Cheatsheet <https://cheatography.com/linux-china/cheat-sheets/justfile/>
