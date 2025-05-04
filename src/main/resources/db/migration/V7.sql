
CREATE TABLE IF NOT EXISTS private_message (
                                               id          BIGSERIAL PRIMARY KEY,
                                               sender_id   BIGINT      NOT NULL REFERENCES users(id),
    receiver_id BIGINT      NOT NULL REFERENCES users(id),
    content     TEXT        NOT NULL,
    timestamp   TIMESTAMP   NOT NULL DEFAULT now()
    );


CREATE INDEX IF NOT EXISTS idx_pm_sender   ON private_message(sender_id);
CREATE INDEX IF NOT EXISTS idx_pm_receiver ON private_message(receiver_id);



ALTER TABLE messages
    ALTER COLUMN updated_at SET DEFAULT now();

UPDATE messages
SET    updated_at = created_at
WHERE  updated_at IS NULL;
