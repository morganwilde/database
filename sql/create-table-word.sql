DROP TABLE IF EXISTS tagr1332.Word CASCADE;

CREATE TABLE tagr1332.Word
(
    title               VARCHAR(32)     NOT NULL,
    pronunciation       VARCHAR(32),
    audio               VARCHAR(64)
);

-- Primary key creation

ALTER TABLE tagr1332.Word ADD PRIMARY KEY (title);