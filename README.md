# Airbnb Clone - Backend System

## Project Overview
A full-stack booking platform simulating Airbnb's core functionality, focusing on backend architecture, database design, and secure API development.  
**Duration**: Jun 16-23, 2025  
**Key Goals**:  
✔ User/property/booking management  
✔ Secure payments & reviews  
✔ Scalable database & CI/CD pipelines  

---

## Team Roles
| Role | Responsibilities |
|------|------------------|
| **Backend Developer** | Implements API endpoints, business logic, and integrations (Django/GraphQL) |
| **Database Administrator** | Designs PostgreSQL schema, optimizes queries, ensures data integrity |
| **DevOps Engineer** | Manages Docker containers, CI/CD (GitHub Actions), and deployment |
| **QA Engineer** | Tests APIs, reviews security measures, validates user flows |

---

## Technology Stack
| Technology | Purpose |
|------------|---------|
| **Django** | Backend framework for RESTful APIs |
| **PostgreSQL** | Relational database for structured data storage |
| **GraphQL** | Flexible querying for efficient data retrieval |
| **Redis** | Caching for performance optimization |
| **Docker** | Containerization for consistent environments |
| **GitHub Actions** | Automated CI/CD pipelines |

---

## Database Design
### Key Entities & Relationships
1. **Users**  
   `(id, email, password_hash, role, created_at)`  
   → One-to-many with **Properties**, **Bookings**, **Reviews**  

2. **Properties**  
   `(id, title, price, host_id, location)`  
   → Many-to-one with **Users**; One-to-many with **Bookings**, **Reviews**  

3. **Bookings**  
   `(id, property_id, guest_id, check_in, check_out)`  
   → Many-to-one with **Users** and **Properties**  

4. **Payments**  
   `(id, booking_id, amount, status, transaction_id)`  
   → One-to-one with **Bookings**  

---

## Feature Breakdown
1. **User Management**  
   Secure registration/login (JWT), profile updates.  
2. **Property Listings**  
   Hosts create/edit properties; guests search/filter.  
3. **Booking System**  
   Reserve properties with date validation.  
4. **Payments**  
   Stripe/PayPal integration for transactions.  
5. **Reviews**  
   Rating system with text feedback.  

---

## API Security
- **Authentication**: JWT tokens for user sessions  
- **Authorization**: Role-based access control (e.g., hosts vs. guests)  
- **Rate Limiting**: Prevent API abuse (e.g., 100 requests/minute)  
- **Data Encryption**: HTTPS, hashed passwords  
*Why?* Protects sensitive user/payment data and prevents fraud.  

---

## CI/CD Pipeline
**Tools**: GitHub Actions + Docker  
**Purpose**:  
✔ Automate testing (unit/integration)  
✔ Deploy to staging/production  
✔ Ensure consistent environments  
