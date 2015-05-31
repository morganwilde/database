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

# Primary key creation

ALTER TABLE tagr1332.Card ADD PRIMARY KEY (card_number)
GENERATED ALWAYS AS IDENTITY
(START WITH 0, INCREMENT BY 1);