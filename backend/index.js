const express = require("express");
const cors = require("cors");
const sqlite3 = require("sqlite3").verbose();
const path = require("path");

const app = express();
app.use(cors());
app.use(express.json());

// DB file will be created inside container
const dbPath = path.join(__dirname, "notes.db");
const db = new sqlite3.Database(dbPath);

// Create table if not exists
db.run("CREATE TABLE IF NOT EXISTS notes (id INTEGER PRIMARY KEY AUTOINCREMENT, text TEXT)");

// Get all notes
app.get("/api/notes", (req, res) => {
  db.all("SELECT * FROM notes", (err, rows) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(rows);
  });
});

// Add a note
app.post("/api/notes", (req, res) => {
  const { text } = req.body;
  if (!text) return res.status(400).json({ error: "Text is required" });
  db.run("INSERT INTO notes (text) VALUES (?)", [text], function (err) {
    if (err) return res.status(500).json({ error: err.message });
    res.json({ id: this.lastID, text });
  });
});

app.listen(3000, () => console.log("Backend + DB running on port 3000"));
