#!/usr/bin/env bash
set -o errexit
pip install --upgrade pip
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"
pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate
