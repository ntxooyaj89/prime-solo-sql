-- How do you get all users from Chicago?
SELECT * FROM "accounts" WHERE "city" = 'chicago';

-- How do you get all users with usernames that contain the letter a?
SELECT * FROM "accounts" WHERE 'name' LIKE '%a%';

-- The bank is giving a new customer bonus! How do you update all records with an account balance of 0.00 and a transactions_attempted of 0? Give them a new account balance of 10.00.

SELECT * FROM "accounts" WHERE "transactions_attempted" = 0 AND "account_balance" = 0.00;

-- How do you select all users that have attempted 9 or more transactions?
