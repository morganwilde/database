DROP TABLE IF EXISTS tagr1332.Card CASCADE;

CREATE TABLE tagr1332.Card
(
    card_number         SERIAL          NOT NULL,
    option_1            INTEGER         NOT NULL,
    option_2            INTEGER         NOT NULL,
    option_3            INTEGER         NOT NULL,
    sense               INTEGER         NOT NULL,
    bucket              VARCHAR(64),
    question            VARCHAR(280)    NOT NULL,
    answered_correctly  BOOLEAN
);

-- Primary key creation

ALTER TABLE tagr1332.Card ADD PRIMARY KEY (card_number);

-- Foreign key creation

ALTER TABLE tagr1332.Card ADD CONSTRAINT is_option_1 FOREIGN KEY (option_1)
REFERENCES tagr1332.Sense ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE tagr1332.Card ADD CONSTRAINT is_option_2 FOREIGN KEY (option_2)
REFERENCES tagr1332.Sense ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE tagr1332.Card ADD CONSTRAINT is_option_3 FOREIGN KEY (option_2)
REFERENCES tagr1332.Sense ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE tagr1332.Card ADD CONSTRAINT is_sense FOREIGN KEY (sense)
REFERENCES tagr1332.Sense ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE tagr1332.Card ADD CONSTRAINT is_bucket FOREIGN KEY (bucket)
REFERENCES tagr1332.Bucket ON DELETE SET NULL ON UPDATE SET NULL;