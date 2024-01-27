CREATE TABLE images (
    imageid     bigint  unsigned            NOT NULL,
    imagetype   int             NOT NULL,
    image       mediumblob          NOT NULL,
    PRIMARY KEY (imageid)
);
