use tb5practice;

drop table if exists AgentPolicy;

/* *****************************************************************************
				     Creating AgentPolicy Table
   *****************************************************************************
*/

create table AgentPolicy
(
   agentId int,
   policyId int,
   isSplitAgent int,
   foreign key(AgentId) references Agent(AgentID),
   foreign key(policyId) references Policy(PolicyID),
   primary key(AgentId,PolicyID)
);

/*  ****************************************************************************
				Inserting Records into AgentPolicy Table
	****************************************************************************
*/

INSERT INTO AGENTPOLICY(AGENTID, POLICYID, IsSplitAgent)
VALUES(1,1,2),
					(1,3,1),
					(2,3,1),
					(2,1,1),
					(2,4,1),
					(2,5,1),
					(4,1,2),
					(4,3,1),
					(5,1,2),
					(5,2,1);
                    
select * from AgentPolicy;    