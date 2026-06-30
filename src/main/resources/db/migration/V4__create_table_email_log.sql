CREATE TABLE email_log (
    id SERIAL PRIMARY KEY,
    report_id INTEGER NOT NULL REFERENCES reports(id) ON DELETE CASCADE,
    recipient TEXT NOT NULL,
    subject VARCHAR(80) NOT NULL,
    status VARCHAR(10) NOT NULL,
    error_message VARCHAR(300),
    sent_at TIMESTAMPTZ NOT NULL
);