# Talent Manaagement Executable

# This works only works on VS Code at the moment, don't try with cmd/Linux terminal

Create a "dbuser" User
1. Open a terminal
2. Check that MySQL is up and running:
sudo systemctl status mysqlWA3537 ADP Full Stack Capstone

3. Navigate to the scripts directory under ProjectAssets
cd ~/ProjectAssets/sql-scripts
4. Check for the sql-schema.sql file:
ls
5. Check that MySQL is up and running:
sudo systemctl status mysql
6. Connect to database from command line client
sudo mysql
7. Check databases:
show databases;
8. Create a database named "talent":
create database talent;
9. Make "talent" the current database:
use talent;
10. Check tables (should be empty):
show tables;
Run the schema and data creation scripts
11. Run the sql_schema.sql script
source ./sql_schema.sql;
12. Check tables (should have 5 tables now):
show tables;WA3537 ADP Full Stack Capstone

13. Check the structure of the 'user' table:
describe user;
14. Run the talent_user.sql script:
source ./talent_user.sql;
15. Check the 'user' table (should have 4 rows now):
select * from user;
Create a user-id that the REST API can connect with
16. Create a new ID with the username "dbuser" and the password "passpass"
create user 'dbuser'@'localhost' identified by 'passpass';
17. Grant permissions to the new user
grant all privileges on talent.* to
'dbuser'@'localhost';
18. Exit the mysql cli shell:
quit;
19. Connect with the new username and password:
mysql -u dbuser -p
20. When prompted enter the password "passpass" and hit enter. The "mysql" shell prompt appearsW

21. Try these commands (one at a time):
show databases;
use talent;
select * from user;
insert into user values(100,'abc','pass','test');
select * from user;
delete from user where id=100;
select * from user;
22. Close the mysql shell



## Setup before you execute!!
Make sure to you set up your workspace (new folder/directory)

Open your workspace using VS Code

## Running TalentManagementExecutable.sh
### Open up a terminal in VS Code to your workspace:
  Do this by:
  * pressing Ctrl+Shift+` in VS Code
  * go to the menu bar up top, press Terminal then New Terminal

### Once you got the terminal open, clone this repo
git clone https://github.com/azncrusader/TalentManagementExectuable

### Go to the TalentManagementExecutable directory
cd TalentManagementExecutable/

### Run bash on terminal
bash TalentManagementExecutable.sh

## When finished make sure to:
* run gradle -stop on a terminal
* remove this repo from your workspace
