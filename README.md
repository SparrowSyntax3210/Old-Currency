# Old Currency Marketplace

A marketplace for collectible coins with separate Django API, admin dashboard, and customer pages.

## Repository layout

```text
backend/              Django REST API and database models
frontend/admin/       React + TypeScript admin dashboard
frontend/customer/    Customer-facing static pages and assets
```

## Run locally

### Backend

```powershell
cd backend
python -m venv ..\venv
..\venv\Scripts\Activate.ps1
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

The API runs at `http://127.0.0.1:8000/`.

### Admin dashboard

In a second terminal:

```powershell
cd frontend/admin
npm install
npm run dev
```

The admin dashboard runs at `http://localhost:5173/`.

### Customer pages

In a third terminal:

```powershell
cd frontend/customer
python -m http.server 5500
```

Open `http://localhost:5500/product.html` or `http://localhost:5500/auth/auth.html`.

## Add product data

After creating an admin user, run:

```powershell
cd backend
python add_real_products.py
```

Keep secrets in environment variables for production; do not commit `.env` files. The admin frontend expects the Django API at `http://127.0.0.1:8000/api/`.

See [PUSH_INSTRUCTIONS.md](PUSH_INSTRUCTIONS.md) for GitHub publishing notes.