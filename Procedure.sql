CREATE DEFINER=`root`@`localhost` PROCEDURE `ask`(in a int)
BEGIN
	select cand_username,num_interview,AVG(personality) as per,Max(education) as edu,MAX(experience) as exp,(AVG(personality)+MAX(education)+MAX(experience)) As Average from interview where job_id=a and education>0 and experience>0 and personality>0 GROUP BY cand_username order by average desc;
    select cand_username,'inadequate education' as reason from interview where job_id=a and education=0 and experience>0 and personality>0  ;
	select cand_username,'no prior experience' as reason from interview where job_id=a and education>0 and experience=0 and personality>0  ;
	select cand_username,'failed the interview' as reason from interview where job_id=a and education>0 and experience>0 and personality=0  ;
	select cand_username,'inadequate education, no prior experience,failed the interview' as reason from interview where job_id=a and education=0 and experience=0 and personality=0  ;
	select cand_username,'inadequate education,no prior experience ' as reason from interview where job_id=a and education=0 and experience=0 and personality>0  ;
	select cand_username,'inadequate education, failed the interview' as reason from interview where job_id=a and education=0 and experience>0 and personality=0  ;
	select cand_username,'failed the interview,no prior experience' as reason from interview where job_id=a and education>0 and experience=0 and personality=0  ;
END