import express from "express";
import { v4 } from 'uuid'
import mongoose from 'mongoose'

const app = express();

const db = await mongoose.connect('mongodb://mymongo/testdb')
console.log(db.connection.db.databaseName)

const productSchema = mongoose.Schema({
  name: String,
})

const ProductModel = mongoose.model('Product', productSchema)

app.get("/", async (req, res) => {

  const newProduct = await ProductModel.create({
    name: 'Product 1'
  })

  res.json({
    id: v4(),
    newProduct
  })
});

app.listen(3000);

console.log("Server on port", 3000);
