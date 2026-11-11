
# Database

This folder contains the SQL files for our Graduation Project Management System.

## How to Run the Files

Run the files in this order:

1. `FreeSQL-demo.txt`
2. `supervisors.sql`
3. `project.sql`
4. `MILESTONES.sql`
5. `evaluations.sql`

Make sure to follow this order because some tables depend on other tables.

## Table Relationships

- TEAM_MEMBERS is connected to TEAMS.
- PROJECTS is connected to TEAMS and SUPERVISORS.
- MILESTONES is connected to PROJECTS.
- EVALUATIONS is connected to PROJECTS and SUPERVISORS.

**Database:** Oracle
