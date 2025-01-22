Murder Mystery Project
About the Project
The Murder Mystery Project is a fun SQL-based database I created to simulate solving a fictional murder case. It’s designed to keep track of all the important details, like crimes, witnesses, suspects, evidence, and locations. The idea was to explore how databases can help organize and analyze complex information in a structured way.

What It Does
Tracks Key Details: The database has tables for everything—crimes, witnesses, suspects, evidence, and locations—all connected through relationships.
Answers Big Questions: I wrote SQL queries to find out things like:
What do the witnesses know?
Who are the suspects?
What evidence has been collected?
Uses Sample Data: To test everything, I added sample data that represents a real investigation.
Optimized for Speed: I made sure the database runs efficiently by indexing key fields and testing queries.
Challenges and Solutions
One of the biggest challenges was writing queries that connect multiple tables and still give accurate results. For example, figuring out how to link suspects to crimes through their current locations. I solved this by using JOINs and testing queries step by step to ensure they worked.

Another challenge was organizing the data without making the database overly complicated. Breaking it into small tables and using relationships between them made everything manageable and clear.

How It Works
Database Structure: The project has five main tables:

Crimes: Details of the crime, like type, location, and status.
Witnesses: What witnesses said and their contact info.
Suspects: Information about possible suspects, including descriptions and past crimes.
Evidence: What evidence was collected and its status.
Locations: Crime scene addresses and any surveillance data.
SQL Queries: I wrote queries to:

List witness statements for a crime.
Match suspects to crime locations.
Show all evidence linked to a specific crime.
What I Learned
This project taught me a lot about:

How to design databases that are easy to understand and use.
Writing SQL queries that connect different tables and extract meaningful insights.
The importance of testing and organizing data for better performance.
How to Use
Clone this repository.
Import the SQL script into your database management tool (like MySQL).
Use the sample data and queries to explore the project.
