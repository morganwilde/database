DROP VIEW tagr1332.CardWithSenses CASCADE;

CREATE VIEW tagr1332.CardWithSenses
(card_number, option_1, option_2, option_3, sense, bucket, question, answered_correctly)
    AS SELECT
        card.card_number,
        option1.headword,
        option2.headword,
        option3.headword,
        sense.headword,
        card.bucket,
        card.question,
        card.answered_correctly
    FROM Card
    JOIN Sense option1 ON option1.sense_number = card.option_1
    JOIN Sense option2 ON option2.sense_number = card.option_2
    JOIN Sense option3 ON option3.sense_number = card.option_3
    JOIN Sense ON sense.sense_number = card.sense;