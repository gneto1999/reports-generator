CREATE TABLE reports (
    id SERIAL PRIMARY KEY,
    public_id UUID DEFAULT uuidv7() NOT NULL,
    user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    title VARCHAR(120) NOT NULL,
    description TEXT NOT NULL,
    recipient_email TEXT NOT NULL,
    status VARCHAR(15) NOT NULL,
    file_path TEXT NOT NULL,
    error_message VARCHAR(300),
    requested_at TIMESTAMPTZ NOT NULL,
    processed_at TIMESTAMPTZ NOT NULL
);