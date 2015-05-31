CREATE TABLE tagr1332.Bucket
(
    category_name       VARCHAR(64)     NOT NULL
);

CREATE TABLE tagr1332.Card
(
    card_number         INTEGER         NOT NULL,
    option_1            INTEGER         NOT NULL,
    option_2            INTEGER         NOT NULL,
    option_3            INTEGER         NOT NULL,
    sense               INTEGER         NOT NULL,
    bucket              VARCHAR(64),
    question            VARCHAR(280)    NOT NULL,
    answered_correctly  BOOLEAN
);

CREATE TABLE tagr1332.Sense
(
    sense_number        INTEGER         NOT NULL,
    definition          VARCHAR(280)    NOT NULL,
    part_of_speech      VARCHAR(32)     NOT NULL,
    headword            VARCHAR(32)     NOT NULL
);

CREATE TABLE tagr1332.Word
(
    title               VARCHAR(32)     NOT NULL,
    pronunciation       VARCHAR(32),
    audio               VARCHAR(64)
);

# Primary key creation
ALTER TABLE tagr1332.Bucket ADD PRIMARY KEY (category_name);

ALTER TABLE tagr1332.Card ADD PRIMARY KEY (card_number)
GENERATED ALWAYS AS IDENTITY
(START WITH 0, INCREMENT BY 1);

ALTER TABLE tagr1332.Sense ADD PRIMARY KEY (sense_number)
GENERATED ALWAYS AS IDENTITY
(START WITH 0, INCREMENT BY 1);

ALTER TABLE tagr1332.Word ADD PRIMARY KEY (title);