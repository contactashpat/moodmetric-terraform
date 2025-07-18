import express from "express";

const app = express();
const port = process.env.PORT || 3000;

app.use(express.json());

app.get("/health", (_, res) => {
  res.send("OK");
});

app.get("/status", (_, res) => {
  res.json({ status: "running", timestamp: new Date().toISOString() });
});

app.listen(port, () => {
  console.log(`API running on port ${port}`);
});