drop table if exists justfix_users;
CREATE TABLE justfix_users
(
    __v int,
    address text,
    advocateName text,
    advocateOrg text,
    advocateRole text,
    bbl text,
    boro text,
    created timestamp,
    fullName text,
    isRentStab boolean,
    lat numeric,
    lng numeric,
    updated timestamp
);
COPY
    justfix_users(__v, address, advocateName, advocateOrg, advocateRole, bbl, boro, created, fullName, isRentStab, lat, lng, updated)
FROM '/Users/dan/Desktop/users_04082018_postgres.csv' DELIMITER ',' CSV HEADER;

CREATE INDEX ON justfix_users (bbl);
