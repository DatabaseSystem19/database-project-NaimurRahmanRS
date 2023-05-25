-- Drop the applications table
DROP TABLE applications;

-- Drop the jobs table
DROP TABLE jobs;

-- Drop the users table
DROP TABLE users;

-- Drop the companies table
DROP TABLE companies;

-- Create the companies table
CREATE TABLE companies (
    company_id INTEGER NOT NULL,
    company_name VARCHAR(40) NOT NULL,
    category VARCHAR(40),
    website VARCHAR(40),
    ceo_name VARCHAR(40),
    PRIMARY KEY (company_id)
);

-- Create the users table
CREATE TABLE users (
    user_id INTEGER NOT NULL,
    user_name VARCHAR(40) NOT NULL,
    phone NUMBER(15),
    email VARCHAR(40) UNIQUE NOT NULL,
    skillset VARCHAR(40),
    educational_qualification VARCHAR(40),
    PRIMARY KEY (user_id)
);

-- Create the jobs table
CREATE TABLE jobs (
    job_id INTEGER NOT NULL,
    job_title VARCHAR(40) NOT NULL,
    company_id INTEGER NOT NULL,
    job_type VARCHAR(40),
    salary NUMBER(20),
    education VARCHAR(40),
    PRIMARY KEY (job_id),
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

-- Create the applications table
CREATE TABLE applications (
    app_id INTEGER NOT NULL,
    job_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    status VARCHAR(40) CHECK (status IN ('Accepted', 'Rejected', 'Pending')),
    PRIMARY KEY (app_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Add column in the table
ALTER TABLE applications ADD test CHAR(40);

--Modify column definition in the table
alter table applications modify test varchar(40);

--Rename the column name
alter table applications rename column test to test2;

--Drop the column from table
alter table applications drop column test2;
