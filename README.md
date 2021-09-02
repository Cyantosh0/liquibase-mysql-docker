## Database migration with Liquibase
Here, I have connected the Liquibase and run migration commands for database in mysql server.

### Run docker-compose
> docker-compose up <br />
> sudo docker-compose up   // if permission required

### Run Liquibase commands with Make

**updateSQL command** <br />
A helper command that allows you to inspect the SQL Liquibase will run while using the update command.
> Make preview

**update command** <br />
Updates database to current version.
> Make update

**rollbackCount <value> command** <br />
Rolls back the last <value> changesets.
> Make rollback

**dropAll command** <br />
Drops all database objects owned by the user.
> Make drop-all

**generateChangeLog command** <br />
If you want to add changelog to your existing project that has tables in database.
> Make generate
