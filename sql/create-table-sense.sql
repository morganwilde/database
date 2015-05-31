DROP TABLE IF EXISTS tagr1332.Sense CASCADE;

CREATE TABLE tagr1332.Sense
(
    sense_number        SERIAL          NOT NULL,
    pronunciation       VARCHAR(32),
    definition          VARCHAR(280)    NOT NULL,
    part_of_speech      VARCHAR(32)     NOT NULL,
    headword            VARCHAR(32)     NOT NULL
);

-- Primary key creation

ALTER TABLE tagr1332.Sense ADD PRIMARY KEY (sense_number);

-- Foreign key creation

ALTER TABLE tagr1332.Sense ADD CONSTRAINT is_headword FOREIGN KEY (headword)
REFERENCES tagr1332.Word ON DELETE CASCADE ON UPDATE RESTRICT;