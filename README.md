### Setup
## With pgAdmin (Browser)
- Go to the root of the project and type: ```docker-compose up -d``` to start the container.
- Go to localhost:8080
- Use these credentials:
  - Email: admin@example.com
  - password: admin123
- Then under Server, Register the Database and fill out these fields:
  - Name: PostgreSQL (or something else)
  - Port: 5433
  - Maintenance database: mydatabase
  - username: postgres
  - password: secret123
## With DbVisualizer
- Go to the root of the project and type: ```docker-compose up -d``` to start the container.
- Start DbVisualizer.
- Press Create Database Connection.
- Choose PostgreSQL.
- Enter:
  - Name: PostgreSQL (or something else) 
  - Database Server: localhost
  - Database Port: 5433
  - Database: mydatabase
  - Userbase Userid: postgres
  - Database password: secret123
