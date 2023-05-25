-- Insert data into the companies table
INSERT INTO companies VALUES(0001, 'Apple', 'Multinational Technology', 'www.apple.com', 'Tim Cook');
INSERT INTO companies VALUES(0002, 'Google', 'Multinational Technology', 'www.google.com', 'Sundar Pichai');
INSERT INTO companies VALUES(0003, 'Electronic Arts', 'Video Game', 'www.ea.com', 'Andrew Wilson');
INSERT INTO companies VALUES(0004, 'Microsoft', 'Multinational Technology', 'www.microsoft.com', 'Sotya Nadella');
INSERT INTO companies VALUES(0005, 'Tesla', 'Multinational Automotive', 'www.tesla.com', 'Elon Mask');
INSERT INTO companies VALUES(0006, 'Samsung', 'Multinational Technology', 'www.samsung.com', 'Kim Hyun-suk');
INSERT INTO companies VALUES(0007, 'Amazon', 'E-commerce', 'www.amazon.com', 'Andy Jassy');
INSERT INTO companies VALUES(0008, 'Sony', 'Multinational Conglomerate', 'www.sony.com', 'Kenichiro Yoshida');
INSERT INTO companies VALUES(0009, 'IBM', 'Multinational Technology', 'www.ibm.com', 'Arvind Krishna');
INSERT INTO companies VALUES(0010, 'Netflix', 'Streaming Media', 'www.netflix.com', 'Reed Hastings');

-- Insert data into the users table
INSERT INTO users VALUES(1001, 'Naimur Rahman', 01751099887, 'naimur.rahman.rs@gmail.com', 'Game Developer', 'Bsc in CSE');
INSERT INTO users VALUES(1002, 'Galib', 01759964341, 'galib@gmail.com', 'Software Developer', 'Bsc in SWE');
INSERT INTO users VALUES(1003, 'Atique Faisal', 01994213076, 'atique@gmail.com', 'Chip Designer', 'Bsc in EEE');
INSERT INTO users VALUES(1004, 'Enan Emon', 01859964299, 'enan@gmail.com', 'Graphics Designer', 'HSC');
INSERT INTO users VALUES(1005, 'Yashrif Arifin', 01776809429, 'yashrif@gmail.com', 'Software Developer', 'Bsc in CSE');
INSERT INTO users VALUES(1006, 'John Smith', 0123456781, 'johnsmith@gmail.com', 'Software Engineer', 'BSc in Computer Science');
INSERT INTO users VALUES(1007, 'Emma Johnson', 0123456782, 'emmajohnson@gmail.com', 'Data Analyst', 'BSc in Mathematics');
INSERT INTO users VALUES(1008, 'Michael Brown', 0123456783, 'michaelbrown@gmail.com', 'Web Developer', 'BSc in Information Technology');
INSERT INTO users VALUES(1009, 'Olivia Davis', 0123456784, 'oliviadavis@gmail.com', 'UI/UX Designer', 'BSc in Multimedia');
INSERT INTO users VALUES(1010, 'Sophia Wilson', 0123456785, 'sophiawilson@gmail.com', 'Data Scientist', 'BSc in Statistics');

-- Insert data into the jobs table
INSERT INTO jobs VALUES(2001, 'Software Developer', 0004, 'Full Time', 20000, 'Bsc in SWE');
INSERT INTO jobs VALUES(2002, 'Game Developer', 0003, 'Part Time', 5000, 'Bsc in CSE');
INSERT INTO jobs VALUES(2003, 'Graphics Designer', 0002, 'Contract', 2000, 'HSC');
INSERT INTO jobs VALUES(2004, 'Software Developer', 0001, 'Part Time', 8000, 'Bsc in CSE');
INSERT INTO jobs VALUES(2005, 'Chip Designer', 0005, 'Full Time', 25000, 'Bsc in EEE');
INSERT INTO jobs VALUES(2006, 'Software Engineer', 0009, 'Full Time', 50000, 'BSc in Computer Science');
INSERT INTO jobs VALUES(2007, 'Data Analyst', 0007, 'Part Time', 25000, 'BSc in Mathematics');
INSERT INTO jobs VALUES(2008, 'Web Developer', 0006, 'Contract', 3000, 'BSc in Information Technology');
INSERT INTO jobs VALUES(2009, 'UI/UX Designer', 0008, 'Full Time', 40000, 'BSc in Multimedia');
INSERT INTO jobs VALUES(2010, 'Data Scientist', 0010, 'Part Time', 35000, 'BSc in Statistics');

-- Insert data into the applications table
INSERT INTO applications VALUES(3001, 2004, 1005, 'Accepted');
INSERT INTO applications VALUES(3002, 2004, 1002, 'Pending');
INSERT INTO applications VALUES(3003, 2001, 1005, 'Rejected');
INSERT INTO applications VALUES(3004, 2001, 1002, 'Accepted');
INSERT INTO applications VALUES(3005, 2005, 1003, 'Accepted');
INSERT INTO applications VALUES(3006, 2003, 1004, 'Pending');
INSERT INTO applications VALUES(3007, 2002, 1001, 'Accepted');
INSERT INTO applications VALUES(3008, 2007, 1007, 'Accepted');
INSERT INTO applications VALUES(3009, 2008, 1008, 'Pending');
INSERT INTO applications VALUES(3010, 2009, 1009, 'Rejected');
INSERT INTO applications VALUES(3011, 2010, 1010, 'Accepted');
INSERT INTO applications VALUES(3012, 2006, 1006, 'Rejected');

