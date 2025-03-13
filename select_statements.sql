CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE campaigns (
    campaign_id SERIAL PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    title VARCHAR(255),
    goal DECIMAL(10,2),
    pledged DECIMAL(10,2),
    category VARCHAR(50)
);

SELECT * FROM contacts;
SELECT title, goal, pledged FROM campaigns WHERE pledged >= goal;