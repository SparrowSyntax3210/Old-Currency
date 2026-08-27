# Backend

Django REST Framework API for users, products, categories, orders, carts, wishlists, checkout, and payments.

```powershell
python -m venv ..\venv
..\venv\Scripts\Activate.ps1
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

The API is served at `http://127.0.0.1:8000/api/`.
