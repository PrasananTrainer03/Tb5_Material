-- Display structure about Agent table 

desc Agent;

-- Display All records from Agent Table 

select * from Agent;

-- Display AgentId,FirstName,LastName,city,state from Agent Table 

select AgentId,FirstName,LastName,City,State from Agent;

-- Display all Records from Agent table whose gender is 'Female' 

select * from Agent where gender='Female';

-- display all recods from Agent table whose AgentId between 1 and 10 

select * from Agent where agentId between 1 and 10;

-- Display all records whose whose country is 'USA' 

select * from Agent where country='USA';

-- Display all recrods who are born between 1980 and 1985 

select * from Agent where year(dob) Between 1980 and 1985;

-- Display Information about Policy Table 

desc policy;

-- Display all records from Policy table 

select * from Policy;

-- Display PolicyId, AnnualPremium PaymentModeId from Policy table 

