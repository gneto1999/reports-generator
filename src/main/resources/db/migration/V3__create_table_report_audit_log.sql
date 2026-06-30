CREATE TABLE report_audit_log (
    id SERIAL PRIMARY KEY,
    report_id INTEGER NOT NULL REFERENCES reports(id) ON DELETE CASCADE,
    old_status VARCHAR(15) NOT NULL,
    new_status VARCHAR(15) NOT NULL,
    message VARCHAR(300),
    changed_at TIMESTAMPTZ NOT NULL
);