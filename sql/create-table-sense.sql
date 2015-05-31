DROP TABLE IF EXISTS tagr1332.Sense CASCADE;

CREATE TABLE tagr1332.Sense
(
    sense_number        INTEGER         NOT NULL,
    definition          VARCHAR(280)    NOT NULL,
    part_of_speech      VARCHAR(32)     NOT NULL,
    headword            VARCHAR(32)     NOT NULL
);

-- Primary key creation

ALTER TABLE tagr1332.Sense ADD PRIMARY KEY (sense_number)
GENERATED ALWAYS AS IDENTITY
(START WITH 0, INCREMENT BY 1);