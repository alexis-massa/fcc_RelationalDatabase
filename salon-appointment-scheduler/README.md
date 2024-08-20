# 💻 Project : Salon Appointment Scheduler
A database allowing to make appointments via an interactive bash script reproducing a conversation. The user can chose a name, a time, and the services they want.

## Steps
For this project, you will create an interactive Bash program that uses PostgreSQL to track the customers and appointments for your salon.

## Task list
- [x] You should create a database named salon
- [x] You should connect to your database, then create tables named customers, appointments, and services
- [x] Each table should have a primary key column that automatically increments
- [x] Each primary key column should follow the naming convention, table_name_id. For example, the customers table should have a customer_id key. Note that there’s no s at the end of customer
- [x] Your appointments table should have a customer_id foreign key that references the customer_id column from the customers table
- [x] Your appointments table should have a service_id foreign key that references the service_id column from the services table
- [x] Your customers table should have phone that is a VARCHAR and must be unique
- [x] Your customers and services tables should have a name column
- [x] Your appointments table should have a time column that is a VARCHAR
- [x] You should have at least three rows in your services table for the different services you offer, one with a service_id of 1
- [x] You should create a script file named salon.sh in the project folder
- [x] Your script file should have a “shebang” that uses bash when the file is executed (use #! /bin/bash)
- [x] Your script file should have executable permissions
- [x] You should not use the clear command in your script
- [x] You should display a numbered list of the services you offer before the first prompt for input, each with the format #) <service>. For example, 1) cut, where 1 is the service_id
- [x] If you pick a service that doesn't exist, you should be shown the same list of services again
- [x] Your script should prompt users to enter a service_id, phone number, a name if they aren’t already a customer, and a time. You should use read to read these inputs into variables named SERVICE_ID_SELECTED, CUSTOMER_PHONE, CUSTOMER_NAME, and SERVICE_TIME
- [x] If a phone number entered doesn’t exist, you should get the customers name and enter it, and the phone number, into the customers table
- [x] You can create a row in the appointments table by running your script and entering 1, 555-555-5555, Fabio, 10:30 at each request for input if that phone number isn’t in the customers table. The row should have the customer_id for that customer, and the service_id for the service entered
- [x] You can create another row in the appointments table by running your script and entering 2, 555-555-5555, 11am at each request for input if that phone number is already in the customers table. The row should have the customer_id for that customer, and the service_id for the service entered

- [x] After an appointment is successfully added, you should output the message I have put you down for a <service> at <time>, <name>. For example, if the user chooses cut as the service, 10:30 is entered for the time, and their name is Fabio in the database the output would be I have put you down for a cut at 10:30, Fabio. Make sure your script finishes running after completing any of the tasks above, or else the tests won't pass
