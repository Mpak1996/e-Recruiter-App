a)
select  user.name,user.surname,etaireia.name,job.id,job.salary,count(*) from job 
INNER JOIN recruiter ON job.recruiter = recruiter.username 
INNER JOIN user ON user.username = recruiter.username 
INNER JOIN etaireia ON etaireia.AFM = recruiter.firm 
INNER JOIN applies ON applies.job_id = job.id 
Where salary>1900 group by applies.job_id;

b)
select has_degree.cand_usrname,candidate.certificates,count(*),avg(grade) FROM has_degree 
INNER JOIN candidate ON candidate.username=has_degree.cand_usrname 
group by cand_usrname HAVING COUNT(*) > 1;

c)
select applies.cand_usrname,avg(job.salary),count(*) from applies 
INNER JOIN job on job.id = applies.job_id 
WHERE job.salary>1800 group by cand_usrname ;

d)
SELECT etaireia.name,job.position,antikeim.descr FROM etaireia INNER JOIN recruiter on recruiter.firm=etaireia.AFM
 INNER JOIN job ON job.recruiter=recruiter.username INNER JOIN requires ON requires.job_id = job.id
 INNER JOIN antikeim ON antikeim.title = requires.antikeim_title
 where etaireia.city="Patra" and job.position like '%Program%';

e)
SELECT recruiter.username, (
        SELECT COUNT(job.id)
        FROM   job
        where recruiter.username=job.recruiter
        ) AS amount1,
        count(interview.job_id) as amount2,avg(job.salary) As Average FROM recruiter 
INNER JOIN job ON recruiter.username=job.recruiter 
INNER JOIN interview On interview.job_id=job.id 
GROUP BY job.recruiter  having amount1> 2 ;