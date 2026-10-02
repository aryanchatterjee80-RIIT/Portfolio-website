# Somnath Chatterjee — Developer Portfolio Web Application

A modern, professional, high-performance, responsive personal portfolio web application built for **Somnath Chatterjee**, presenting him as a **Junior Front-End Web Developer and BCA student**.

---

## 🌟 Executive Summary

- **Candidate:** Somnath Chatterjee
- **Role:** Junior Front-End Web Developer
- **Degree:** UG (Honours) BCA Student (Raniganj Institute of Information Technology - RIIT, Kazi Nazrul University - KNU)
- **Primary Tech Stack:** Next.js 15 (App Router), React 19, TypeScript, Tailwind CSS, Node.js, MongoDB & Mongoose
- **Core Languages & Foundations:** HTML5, CSS3, JavaScript, Tailwind CSS, C, C++, Java, Python, Data Structures in C, Object-Oriented Programming, MySQL
- **Database:** Local MongoDB (`mongodb://localhost:27017/somnath_portfolio`) & MongoDB Atlas compatible
- **Live Server:** `http://localhost:3000`

---

## 🚀 Key Features & Architectural Modules

### 1. Hero & Profile Section
- Clean developer-centric interface inspired by modern portfolio design aesthetics.
- Features Somnath's authentic photograph taken at his institute RIIT with floating interactive tech badges (*Front-End Dev*, *Core Java & MySQL*, *3+ Projects*).
- Live availability indicator beacon (*Available for Junior Roles & Internships*).
- Professional CTAs: **View Projects**, **Download Resume**, and **Contact Me**.
- Direct verified links to LinkedIn, GitHub, and email.

### 2. About Me & Professional Summary
- **Verified Professional Summary:** Strictly reflecting Somnath's resume without exaggeration.
- **Academic Context:** BCA student at RIIT affiliated with Kazi Nazrul University.
- **Personal Details Card:** Father's Name (*Partha Chatterjee*), Date of Birth (*20-Dec-1999*), Category (*General*), Languages Known (*Bengali, Hindi, English*), and Address (*Ranisayer More, Near BDO Office, Nimcha, Paschim Bardhaman, West Bengal – 713358*).

### 3. Interactive Technical Skills
- Filterable tabs (*All Skills, Front-End Development, Programming Languages, Programming Concepts, Database & Server, Soft Skills, Portfolio Stack*).
- **Clear Stack Transparency:** Distinguishes between technologies listed in Somnath's resume (HTML, CSS, JS, Tailwind, C, C++, Java, Python, MySQL, PHP) and the modern tools used to construct this full-stack portfolio (*Next.js 15, React 19, TypeScript, Node.js, MongoDB, Mongoose, REST API*).
- Interactive cards with level badges (*Proficient, Intermediate, Strong, Portfolio Stack*).

### 4. Education & Qualifications
- **Formal Academic Timeline:**
  - **Madhyamik (Class 10):** WBBSE | SRHS | 2017 | **84%**
  - **Higher Secondary (H.S, Class 12):** WBCHSE | SRHS | 2019 | **83%**
  - **UG (Honours) BCA:** KNU | RIIT | Expected Passing Year: **2028** (*In Progress*)
- **Additional Qualifications & Diplomas Grid:**
  - **ITI:** NCVT | RPITI | 2020 | **87%**
  - **UG (Honours) B.A. Political Science:** NSOU | B.B. College | 2024 | **75%**
  - **CITI:** YCTC | RYCTC | 2020 | **49%**
  - **DITA:** YCTC | RYCTC | 2021 | **59%**
  - **CFAS:** YCTC | RYCTC | 2022 | **65%**

### 5. Academic Projects & Dynamic Detail Pages
- **Project 01 — Hospital Management System (HMS):**
  - Technologies: HTML5, CSS3, JavaScript, Java, MySQL
  - Modules: Patient Registration, Doctor Management, Appointment Management, Patient Records, Staff Management, Billing Management
- **Project 02 — College Management System (CMS):**
  - Technologies: HTML5, CSS3, JavaScript, Java, MySQL
  - Modules: Student Management, Teacher Management, Course Management, Attendance Management, Examination Management, Fees Management
- **Project 03 — School Management System (SMS):**
  - Technologies: HTML5, CSS3, JavaScript, Java, MySQL
  - Modules: Student Management, Teacher Management, Class Management, Attendance Management, Examination Management, Fees Management
- **Dynamic Detail Pages (`/projects/[slug]`):**
  - Dedicated pages: `/projects/hospital-management-system`, `/projects/college-management-system`, `/projects/school-management-system`
  - Features system architecture, relational database table schemas, project objectives, modules, vector UI mockups, and future enhancements.
  - Links display **"Coming Soon"** rather than placeholder URLs.

### 6. Official Resume Section
- Integrated PDF viewer and ATS-formatted resume sheet.
- **One-click Download:** Direct download of `/resume/Somnath_Chatterjee_Resume.pdf`.
- **Open in New Tab:** Direct browser PDF viewing.
- **Print Resume:** Native `window.print()` with clean print media CSS.

### 7. Functional Contact Form & MongoDB Persistence
- Fields: Name, Email, Phone, Subject, Message.
- Real-time client-side input validation and server-side schema verification.
- In-memory IP rate limiting to prevent spam.
- Stores messages in MongoDB collection `ContactMessages`.
- Instant user feedback with success state and error handling.

### 8. Admin Control Dashboard (`/admin` and `/admin/login`)
- Protected authentication system with bcrypt password hashing and signed JWT cookies/bearer headers.
- **Default Seeded Admin:** `csomnath500@gmail.com` / `Somnath@Admin2026`.
- View, mark status (*unread*, *read*, *replied*), and delete contact messages.
- Manage and preview projects.

### 9. AngularJS Architecture Module (`/angular-module`)
- Clearly documented and isolated architecture module demonstrating two-way data binding (`$scope` / `ng-model` simulation), MVC pattern, and shared REST API consumption without bundle pollution in Next.js.

### 10. SEO & Performance
- Next.js Metadata API with title, description, Open Graph, and Twitter Cards.
- Schema.org JSON-LD structured data for `Person` and `WebSite`.
- Dynamic `robots.txt` and `sitemap.xml` routes.
- Tailwind CSS dark/light theme toggle with zero flash on reload.

---

## 🛠️ Technology Stack Breakdown

| Layer | Technologies |
|---|---|
| **Frontend Framework** | Next.js 15 (App Router), React 19, TypeScript |
| **Styling & UI** | Tailwind CSS, Lucide React Icons, Glassmorphism CSS |
| **Backend & APIs** | Next.js Route Handlers, Node.js runtime, REST architecture |
| **Database** | MongoDB (v9.0.2), Mongoose ODM |
| **Security & Auth** | bcryptjs, jsonwebtoken (JWT), HTTP-only cookies, Rate limiting |
| **Build & Deploy** | npm, Next.js static & dynamic generation |

---

## 📂 Project Directory Structure

```
d:\CV\
├── app/
│   ├── layout.tsx                # Root layout, metadata, JSON-LD, navbar & footer
│   ├── page.tsx                  # Main portfolio homepage assembling all sections
│   ├── globals.css               # Tailwind directives, dark mode vars, glass styles
│   ├── robots.ts                 # Dynamic robots.txt
│   ├── sitemap.ts                # Dynamic sitemap.xml
│   ├── projects/
│   │   └── [slug]/
│   │       └── page.tsx          # Dynamic project details page
│   ├── angular-module/
│   │   └── page.tsx              # Standalone Angular architecture showcase
│   ├── admin/
│   │   ├── page.tsx              # Protected admin control dashboard
│   │   └── login/
│   │       └── page.tsx          # Admin sign-in page
│   └── api/
│       ├── auth/
│       │   ├── login/route.ts    # POST: Admin JWT sign-in
│       │   └── me/route.ts       # GET/POST: Session check and logout
│       ├── contact/
│       │   ├── route.ts          # POST: Form submit / GET: Admin messages
│       │   └── [id]/route.ts     # PATCH: Status update / DELETE: Remove message
│       ├── projects/
│       │   ├── route.ts          # GET: All projects / POST: Create project
│       │   └── [slug]/route.ts   # GET, PUT, DELETE single project
│       ├── skills/route.ts       # GET: Categorized skills
│       └── education/route.ts    # GET: Academic and additional qualifications
├── components/
│   ├── Navbar.tsx                # Glassmorphic responsive navigation
│   ├── Hero.tsx                  # Hero with portrait, status badge, tech pills, CTAs
│   ├── About.tsx                 # Profile, professional summary & personal details
│   ├── Skills.tsx                # Tabbed skillsets & portfolio stack distinction
│   ├── Education.tsx             # Academic timeline & qualification cards
│   ├── Projects.tsx              # Academic projects & future concepts
│   ├── ResumeSection.tsx         # Document preview, embedded PDF, print & download
│   ├── Contact.tsx               # Contact cards & functional MongoDB form
│   ├── Footer.tsx                # Footer with quick links and copyright
│   ├── ThemeToggle.tsx           # Dark/Light mode switcher
│   └── AngularModuleShowcase.tsx # Clean AngularJS micro-frontend module
├── lib/
│   ├── mongodb.ts                # Mongoose connection with hot-reload caching
│   ├── auth.ts                   # Password hashing and JWT sign/verify
│   ├── validation.ts             # Form validation & rate limiter
│   └── data.ts                   # Verified Resume source-of-truth data
├── models/
│   ├── Project.ts                # Mongoose schema for projects
│   ├── Skill.ts                  # Mongoose schema for skills
│   ├── Education.ts              # Mongoose schema for education
│   ├── ContactMessage.ts         # Mongoose schema for contact messages
│   └── User.ts                   # Mongoose schema for admin users
├── types/
│   └── index.ts                  # Strict TypeScript interfaces
├── public/
│   ├── images/
│   │   ├── somnath.jpg           # Authentic photo of Somnath Chatterjee
│   │   └── projects/             # High-resolution vector UI dashboard mockups
│   │       ├── hms-dashboard.svg
│   │       ├── hms-appointments.svg
│   │       ├── cms-dashboard.svg
│   │       ├── cms-students.svg
│   │       ├── sms-dashboard.svg
│   │       └── sms-classes.svg
│   └── resume/
│       └── Somnath_Chatterjee_Resume.pdf  # Generated official Resume PDF
└── scripts/
    ├── seed.js                   # Database initialization script
    └── generate-pdf.js           # PDF resume generator
```

---

## ⚡ Quick Start & Execution Guide

### 1. Database Setup
Ensure local MongoDB is running on port 27017 (already running on this system):
```bash
# Verify connection
mongod --version
```

### 2. Environment Configuration
The `.env.local` file contains:
```env
MONGODB_URI=mongodb://localhost:27017/somnath_portfolio
JWT_SECRET=somnath_super_secret_jwt_portfolio_key_2026
ADMIN_EMAIL=csomnath500@gmail.com
ADMIN_PASSWORD=Somnath@Admin2026
NEXT_PUBLIC_SITE_URL=http://localhost:3000
NODE_ENV=development
```

### 3. Seed Database
Seed the database with all 3 academic projects, 26 skills, 8 qualifications, and the admin user:
```bash
npm run seed
```

### 4. Run Development / Production Server
```bash
# Run Development Server
npm run dev

# Or Run Production Build & Server
npm run build
npm run start
```

Access the application in your browser at:
- **Portfolio Website:** `http://localhost:3000`
- **Hospital Management System:** `http://localhost:3000/projects/hospital-management-system`
- **College Management System:** `http://localhost:3000/projects/college-management-system`
- **School Management System:** `http://localhost:3000/projects/school-management-system`
- **Angular Architecture Module:** `http://localhost:3000/angular-module`
- **Admin Login:** `http://localhost:3000/admin/login`
- **Admin Dashboard:** `http://localhost:3000/admin`
- **Download Resume:** `http://localhost:3000/resume/Somnath_Chatterjee_Resume.pdf`
