DROP TABLE IF EXISTS tagr1332.Bucket CASCADE;

CREATE TABLE tagr1332.Bucket
(
    category_name       VARCHAR(64)     NOT NULL
);

-- Primary key creation

ALTER TABLE tagr1332.Bucket ADD PRIMARY KEY (category_name);