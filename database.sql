-- How do you get all users from Chicago?
SELECT * FROM "accounts" WHERE "city" = 'chicago';

-- How do you get all users with usernames that contain the letter a?
SELECT * FROM "accounts" WHERE 'name' LIKE '%a%';

-- The bank is giving a new customer bonus! How do you update all records with an account balance of 0.00 and a transactions_attempted of 0? Give them a new account balance of 10.00.

SELECT * FROM "accounts" WHERE "transactions_attempted" = 0 AND "account_balance" = 0.00;

-- How do you select all users that have attempted 9 or more transactions?

SELECT * FROM "accounts" WHERE "transactions_attempted" = 9; 

-- How do you get the username and account balance of the 3 users with the highest balances, sorted highest to lowest balance? NOTE: Research LIMIT

SELECT * FROM "accounts" ORDER BY "account_balance" DESC;

-- How do you get the username and account balance of the 3 users with the lowest balances, sorted lowest to highest balance?

SELECT * FROM "accounts" ORDER BY "account_balance" ASC;

-- How do you get all users with account balances that are more than $100?

SELECT * FROM "accounts" WHERE "account_balance" > 100;

-- How do you add a new account?


INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('Tom', 'Champlin', 4, 3, 755.80);

-- The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: How do you delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.

DELETE FROM "accounts" WHERE "city" = 'Miami' OR "city" = 'Phoenix' AND "transactions_completed" < 5;

STRETCH GOALS 

-- Anthony moved to Santa Fe.

UPDATE "accounts" SET "city" = 'Santa Fe' WHERE "user_id" = 5;

-- Grace closed her account.

DELETE FROM "accounts" WHERE "user_id" = 9;

-- Travis made a withdrawl of $20,000. What's their new balance? NOTE: Research RETURNING


-- The Bank needs to track last names. NOTE: Research ALTER TABLE https://www.postgresql.org/docs/10/static/sql-altertable.html
