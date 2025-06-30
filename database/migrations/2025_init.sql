CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(120) UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  role VARCHAR(20) NOT NULL
);

CREATE TABLE bands (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE events (
  id SERIAL PRIMARY KEY,
  band_id INTEGER REFERENCES bands(id),
  title VARCHAR(100),
  start_time TIMESTAMP NOT NULL,
  end_time TIMESTAMP NOT NULL,
  created_by INTEGER REFERENCES users(id)
);

CREATE TABLE attendance (
  id SERIAL PRIMARY KEY,
  event_id INTEGER REFERENCES events(id),
  user_id INTEGER REFERENCES users(id),
  rsvp_status VARCHAR(10)
);

CREATE TABLE calendar_tokens (
  user_id INTEGER REFERENCES users(id),
  provider VARCHAR(20),
  access_token TEXT,
  refresh_token TEXT
);
