DROP TABLE books IF EXISTS;

CREATE TABLE books (
  id    INTEGER IDENTITY PRIMARY KEY,
  title VARCHAR(100),
  author  VARCHAR(100)
);

CREATE TABLE readers (
  id         INTEGER IDENTITY PRIMARY KEY,
  first_name VARCHAR(30),
  last_name  VARCHAR(30),
  address    VARCHAR(255),
  city       VARCHAR(80),
  telephone  VARCHAR(20)
);