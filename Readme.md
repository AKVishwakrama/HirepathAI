# Database Design: HirePath AI

## Features
- **UUID for Primary Keys**: Ensures global uniqueness and better security than standard integers.
- **JSONB Integration**: Used for AI feedback and resume parsing for high flexibility.
- **Relational Integrity**: Uses Foreign Keys to link Users, Resumes, and Companies.

## How to Setup
1. Install PostgreSQL.
2. Run `psql -U postgres -f schema.sql`.
3. Run `psql -U postgres -f seed.sql` to add dummy Indian user data.
