CREATE VIEW tagr1332.CardUnanswered
(card_number, option_1, option_2, option_3, sense, bucket, question, answered_correctly)
    AS SELECT
        card_number,
        option_1,
        option_2,
        option_3,
        sense,
        bucket,
        question
    FROM CardWithSenses
    WHERE answered_correctly = NULL;