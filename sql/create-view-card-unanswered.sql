CREATE VIEW tagr1332.CardUnanswered
(card_number, option_1, option_2, option_3, sense, bucket, question)
    AS SELECT
        card_number,
        option_1,
        option_2,
        option_3,
        sense,
        bucket,
        question
    FROM CardWithSenses
    WHERE answered_correctly IS NULL;