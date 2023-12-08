
python-recipe:
  #!/usr/bin/env python3
  import sys
  print(sys.version)

venv:
  # Create venv if it doesn't exist
  # test -d venv || virtualenv -p python3 --no-site-packages venv
  test -d .venv || python3 -m venv .venv

install: venv
  # Activate venv and install somthing inside
  .venv/bin/pip install --upgrade pip
  .venv/bin/pip install -r requirements.txt

#diff:
#  # Activate venv and install somthing inside
#  . .venv/bin/activate && (\
#    cdktf diff strapi-stack-prod\
#  )
#
#deploy:
#  # Activate venv and install somthing inside
#  . .venv/bin/activate && (\
#    cdktf deploy strapi-stack-prod\
#)
#