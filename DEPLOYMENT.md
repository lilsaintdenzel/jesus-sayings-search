# 🚀 Jesus Sayings Search - Deployment Guide

## Option 1: Fly.io (Recommended - Easiest)

### Prerequisites
1. Install [flyctl](https://fly.io/docs/hands-on/install-flyctl/)
2. Create a Fly.io account: `fly auth signup`

### Deploy Steps

1. **Initialize the app:**
```bash
fly launch --no-deploy
# Choose your app name or accept default
# Choose region closest to you
# Choose "Yes" for PostgreSQL database
# Choose "No" for Redis
```

2. **Set environment variables:**
```bash
# Generate a secret key
mix phx.gen.secret

# Set the secret key base
fly secrets set SECRET_KEY_BASE=your_generated_secret_here

# Set the database URL (Fly will provide this)
# This is automatically set when you add PostgreSQL
```

3. **Deploy:**
```bash
fly deploy
```

4. **Run database migrations and seed data:**
```bash
fly ssh console
/app/bin/migrate
/app/bin/jesus_sayings_search_umbrella eval "JesusSayingsSearch.Release.seed()"
```

Your app will be available at: `https://your-app-name.fly.dev`

---

## Option 2: Railway

### Prerequisites
1. Install [Railway CLI](https://docs.railway.app/develop/cli)
2. Create a Railway account

### Deploy Steps

1. **Initialize Railway project:**
```bash
railway login
railway init
```

2. **Add PostgreSQL database:**
```bash
railway add postgresql
```

3. **Set environment variables:**
```bash
railway variables set SECRET_KEY_BASE=$(mix phx.gen.secret)
railway variables set PHX_HOST=your-app.railway.app
```

4. **Deploy:**
```bash
railway up
```

---

## Option 3: Render

### Prerequisites
1. Create a [Render](https://render.com) account
2. Connect your GitHub repository

### Deploy Steps

1. **Create a PostgreSQL database** in Render dashboard

2. **Create a new Web Service:**
   - Connect your GitHub repo
   - Build Command: `mix deps.get && mix assets.deploy && mix release`
   - Start Command: `_build/prod/rel/jesus_sayings_search_umbrella/bin/jesus_sayings_search_umbrella start`

3. **Set environment variables:**
```
SECRET_KEY_BASE=your_generated_secret_here
DATABASE_URL=your_postgres_url_from_render
PHX_HOST=your-app.onrender.com
MIX_ENV=prod
```

---

## Option 4: Heroku

### Prerequisites
1. Install [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)
2. Create a Heroku account

### Deploy Steps

1. **Create Heroku app:**
```bash
heroku create your-app-name
```

2. **Add PostgreSQL:**
```bash
heroku addons:create heroku-postgresql:mini
```

3. **Set buildpacks:**
```bash
heroku buildpacks:set hashnuke/elixir
heroku buildpacks:add --index 1 https://github.com/HashNuke/heroku-buildpack-elixir.git
```

4. **Set environment variables:**
```bash
heroku config:set SECRET_KEY_BASE=$(mix phx.gen.secret)
heroku config:set MIX_ENV=prod
```

5. **Deploy:**
```bash
git push heroku main
```

6. **Run migrations:**
```bash
heroku run "_build/prod/rel/jesus_sayings_search_umbrella/bin/jesus_sayings_search_umbrella eval 'JesusSayingsSearch.Release.migrate()'"
```

---

## Post-Deployment Steps

### 1. Seed the Database
After deployment, run the seed script to populate with 550 Jesus sayings:

```bash
# For Fly.io
fly ssh console -C "/app/bin/jesus_sayings_search_umbrella eval 'JesusSayingsSearch.Release.seed()'"

# For Railway
railway run mix run priv/repo/seeds.exs

# For Render/Heroku (via SSH)
mix run priv/repo/seeds.exs
```

### 2. Test Your Application
Visit your deployed URL and verify:
- ✅ Homepage loads with Google-style interface
- ✅ Search functionality works (case-insensitive)
- ✅ Browse by categories (18 categories)
- ✅ Browse by themes (52 themes)
- ✅ Individual saying pages work
- ✅ Responsive design on mobile

### 3. Set Up Custom Domain (Optional)
- **Fly.io:** `fly certs create your-domain.com`
- **Railway:** Add custom domain in dashboard
- **Render:** Add custom domain in service settings
- **Heroku:** `heroku domains:add your-domain.com`

---

## Production Optimizations

### Performance
- **Database Connection Pooling:** Already configured (10 connections)
- **Asset Compression:** Enabled via Phoenix
- **CDN:** Consider adding CloudFlare for global performance

### Monitoring
- **Fly.io:** Built-in metrics and logging
- **Railway:** Built-in monitoring dashboard
- **External:** Consider adding Sentry for error tracking

### Scaling
- **Fly.io:** `fly scale count 2` (horizontal scaling)
- **Railway:** Auto-scaling available
- **Database:** Upgrade to larger database as needed

---

## Estimated Costs

| Platform | Database | Compute | Total/Month |
|----------|----------|---------|-------------|
| **Fly.io** | $1.94 | $1.94 | **~$4** |
| **Railway** | $5 | $5 | **~$10** |
| **Render** | $7 | $7 | **~$14** |
| **Heroku** | $5 | $7 | **~$12** |

**Recommendation:** Start with Fly.io for the best value and Elixir optimization.

---

## Support

If you encounter issues:
1. Check the deployment logs
2. Verify environment variables are set
3. Ensure database migrations ran successfully
4. Test locally with `MIX_ENV=prod` first

Your Jesus Sayings Search app will be serving the word globally! 🌍✨