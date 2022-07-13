import express from "express";
import cors from "cors";

const app = express();

app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: false }));

app.get('/', (req, res)=> {
  return res.json({
    code: 200,
    status: true,
    message: "Hello API"
  })
})

export default app;
