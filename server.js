import express from "express";
import mysql from "mysql2/promise";
import mongoose from "mongoose";

const app = express();
const client = mysql.createPool({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "anibal",
});

const response = await client.query("SELECT 1 + 1");
console.log(response)

const mongoConnection = await mongoose.connect("mongodb://localhost:27017/db");
console.log(mongoConnection);

app.listen(3000);

console.log("Server on port", 3000);