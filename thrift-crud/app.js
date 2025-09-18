const express = require('express');
const bodyParser = require('body-parser');
require('dotenv').config();

const productsRouter = require('./routes/products');
const customersRouter = require('./routes/customers');

const app = express();
app.use(bodyParser.json());

app.use('/api/products', productsRouter);
app.use('/api/customers', customersRouter);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Thrift CRUD API running on port ${PORT}`);
});
