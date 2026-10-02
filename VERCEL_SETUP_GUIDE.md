# Vercel Online Hosting & Deployment Guide
**Somnath Chatterjee - Personal Developer Portfolio**

This guide provides full command-line and dashboard instructions to host and deploy the portfolio live on Vercel.

---

## ⚡ Quick Deployment Options

### Option 1: 1-Click Batch Launcher (Easiest)
Double-click `DEPLOY_VERCEL.bat` in the project root (`d:\CV`).
Select:
- **`[1]`** to deploy directly to Production Live (`vercel --prod`)
- **`[3]`** to log in to your Vercel account (`vercel login`)

### Option 2: Run directly from any Command Prompt (`cmd.exe`)
Open Command Prompt in `d:\CV` and run:

```cmd
:: 1. Log in to Vercel (first time only)
vercel login

:: 2. Deploy to Live Production
vercel --prod
```

When prompted during the first run:
- **Set up and deploy?** Type `Y` and press Enter.
- **Which scope?** Press Enter (selects your account).
- **Link to existing project?** Type `N` (or `Y` if linking to an existing one).
- **What's your project's name?** Press Enter (default: `somnath-chatterjee-portfolio` or type custom like `somnath-chatterjee`).
- **In which directory is your code located?** Press Enter (`./`).
- **Want to modify settings?** Type `N` (Next.js is auto-detected).

Within 60–90 seconds, Vercel will build and give you a live production URL:
```
✅ Production: https://somnath-chatterjee-portfolio.vercel.app
```

---

## ☁️ MongoDB Atlas Cloud Database Setup (Free Tier)

For live contact messages (`/api/contact`) and the Admin Dashboard (`/admin`), connect a free MongoDB Atlas cloud database:

### 1. Create Free Database Cluster
1. Sign up / Log in to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas).
2. Click **Create a Deployment** -> Select **M0 Free Tier**.
3. Choose AWS/Google Cloud region closest to your visitors (e.g., `Mumbai - ap-south-1`).
4. Click **Create Deployment**.

### 2. Database User & Network Access
1. **Security -> Database Access**:
   - Create a database user (e.g., `somnath_admin` with a strong password).
2. **Security -> Network Access**:
   - Click **Add IP Address** -> Select **Allow Access from Anywhere** (`0.0.0.0/0`) so Vercel serverless functions can connect.

### 3. Get Connection String
1. Click **Database** -> **Connect** -> **Drivers (Node.js)**.
2. Copy your connection URI, e.g.:
   ```
   mongodb+srv://somnath_admin:<PASSWORD>@cluster0.abcde.mongodb.net/somnath_portfolio?retryWrites=true&w=majority
   ```

---

## 🔑 Adding Environment Variables on Vercel

### Method A: Via Command Prompt (`cmd`)
```cmd
vercel env add MONGODB_URI production
vercel env add JWT_SECRET production
vercel env add ADMIN_EMAIL production
vercel env add ADMIN_PASSWORD production
vercel env add NEXT_PUBLIC_SITE_URL production
```

### Method B: Via Vercel Web Dashboard
1. Go to [vercel.com/dashboard](https://vercel.com/dashboard).
2. Click your project -> **Settings** -> **Environment Variables**.
3. Add the following key-value pairs:

| Variable Name | Value | Description |
|---|---|---|
| `MONGODB_URI` | `mongodb+srv://somnath_admin:...` | MongoDB Atlas Connection String |
| `JWT_SECRET` | `somnath_portfolio_jwt_secret_2026_super_secure` | Secret for admin authentication |
| `ADMIN_EMAIL` | `csomnath500@gmail.com` | Admin login email |
| `ADMIN_PASSWORD` | `Somnath@Admin2026` | Admin password |
| `NEXT_PUBLIC_SITE_URL` | `https://somnath-chatterjee-portfolio.vercel.app` | Live domain URL |

---

## 🌱 Seeding the Cloud Database (Optional)

To populate the cloud MongoDB database with initial projects, skills, education, and the admin user:

In Command Prompt:
```cmd
set MONGODB_URI=mongodb+srv://somnath_admin:<PASSWORD>@cluster0.abcde.mongodb.net/somnath_portfolio?retryWrites=true&w=majority
npm run seed
```

---

## 🛡️ Built-in Resilience (Zero-Fail Guarantee)

Even before connecting MongoDB Atlas, your entire portfolio:
- **Hero Section & Verified Profile Photo**
- **About Me & Professional Summary**
- **All Technical & Soft Skills**
- **Complete Academic Timeline & ITI / Degree Qualifications**
- **Hospital, College & School Management System dynamic project pages**
- **Scanned Original Resume Viewer & PDF Download**
- **AngularJS Showcase Module**

Are 100% pre-rendered and served from static high-performance fallbacks, ensuring **instant load times and zero downtime**.

---

## 🛠️ Helpful Vercel CLI Commands

| Command | Action |
|---|---|
| `vercel login` | Log in to Vercel account |
| `vercel` | Deploy a Preview / Staging build |
| `vercel --prod` | Deploy directly to Live Production |
| `vercel env ls` | List configured environment variables |
| `vercel logs <url>` | View live serverless function logs |
| `vercel domains ls` | Manage custom domains |
| `vercel inspect` | Inspect deployment details |
