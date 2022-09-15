create database IPL;
use IPL

#  Create a table named ‘matches’ with appropriate data types for columns
create table matches(
id int,
city varchar(20),
`date` date,
player_of_match varchar(20),
venue varchar(60),
neutral_venue int,
team1  varchar(50),
team2  varchar(50),
toss_winner  varchar(50),
toss_decision varchar(10),
winner  varchar(50),
result  varchar(10),
result_margin int,
eliminater  varchar(10),
method  varchar(10),
umpire1  varchar(50),
umpire2  varchar(50)
);

desc matches;

#  Create a table named ‘deliveries’ with appropriate data types for columns
create table deliveries(
id int,
inning int,
`over` int,
ball int,
batsman varchar(30),
non_striker varchar(30),
bowler varchar(30),
bataman_runs int,
extra_runs int,
total_runs int,
is_wicket int,
dismissal_kind varchar(30),
player_dismissed varchar(30),
fielder varchar(30),
extras_type varchar(30),
batting_team varchar(30),
bowling_team varchar(30)
);

#  Import data from CSV file ’IPL_matches.csv’ attached in resources to ‘matches’

select * from matches;

#  Import data from CSV file ’IPL_Ball.csv’ attached in resources to ‘deliveries’
select * from deliveries;

#  Select the top 20 rows of the deliveries table

select * from deliveries limit 20;

#  Select the top 20 rows of the matches table.

select * from matches limit 20;

#  Fetch data of all the matches played on 2nd May 2013.

select * from matches where date='2013-05-02';

# Fetch data of all the matches where the margin of victory is more than 100 runs.

select * from matches where result_margin >100;

# Fetch data of all the matches where the final scores of both teams tied and order it in
descending order of the date.

select * from matches where result='tie' order by date desc;

# Get the count of cities that have hosted an IPL match.

select count(distinct city) from matches;

