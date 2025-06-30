const express = require('express');
const app = express();
app.use(express.json());

app.get('/', (req, res) => res.send('Rehearsal Scheduler API'));

// TODO: Add endpoints for rehearsal, RSVP, attendance, user

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => console.log(`API running on ${PORT}`));
