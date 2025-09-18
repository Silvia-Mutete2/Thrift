# Thrift CRUD API

A simple Node.js REST API for managing products and customers in a thrift store, using Express and MySQL.

## Features

- View all products
- View all customers
- MySQL database with seed data
- Environment-based configuration

## Prerequisites

- Node.js (v14+ recommended)
- MySQL server

## Setup Instructions

1. **Clone the repository** (if not already done):

   ```bash
   git clone <repo-url>
   cd Thrift/thrift-crud
   ```

2. **Import the Database:**

   - Open MySQL and run the SQL script to create the database and tables with sample data:

     ```bash
     mysql -u root -p < ../thrift_store.sql
     ```

3. **Configure Environment Variables:**

   - Create a `.env` file in the `thrift-crud` directory:

     ```
     DB_HOST=localhost
     DB_USER=root
     DB_PASSWORD=yourpassword
     DB_NAME=ThriftStore
     PORT=3000
     ```

4. **Install Dependencies:**

   ```bash
   npm install
   ```

5. **Run the Application:**

   - For development (with auto-reload):
     ```bash
     npm run dev
     ```
   - For production:
     ```bash
     npm start
     ```

6. **API will be available at:**  
   `http://localhost:3000`

## API Endpoints

### Products

- `GET /api/products`  
  Returns a list of all products.

### Customers

- `GET /api/customers`  
  Returns a list of all customers.

## Example Requests

```bash
curl http://localhost:3000/api/products
curl http://localhost:3000/api/customers
```


## Database Schema

See `thrift_store.sql` for table definitions and seed data.

## Notes

- Update `.env` with your actual MySQL credentials.
- Extend the API by adding more CRUD operations in the `routes/` directory.

