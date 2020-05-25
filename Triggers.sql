drop trigger inserttable
drop trigger updatetable
drop trigger deletetable
drop trigger inserttable1
drop trigger updatetable1
drop trigger deletetable1
drop trigger inserttable2
drop trigger updatetable2
drop trigger deletetable2
drop trigger inserttable3
drop trigger updatetable3
drop trigger deletetable3
drop trigger inserttable4
drop trigger updatetable4
drop trigger deletetable4

  CREATE TRIGGER inserttable AFTER INSERT ON user
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = new.username,energeia='insert',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

  CREATE TRIGGER updatetable AFTER UPDATE ON user
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = new.username,energeia='update',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

  CREATE TRIGGER deletetable AFTER  DELETE ON user
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = old.username,energeia='delete',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

 CREATE TRIGGER inserttable1 AFTER INSERT ON candidate
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = new.username,energeia='insert',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

  CREATE TRIGGER updatetable1 AFTER UPDATE ON candidate
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = new.username,energeia='update',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

 CREATE TRIGGER deletetabl1e AFTER  DELETE ON candidate
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = old.username,energeia='delete',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

 CREATE TRIGGER inserttable2 AFTER INSERT ON recruiter
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = new.username,energeia='insert',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

  CREATE TRIGGER updatetable2 AFTER UPDATE ON recruiter
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = new.username,energeia='update',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

 CREATE TRIGGER deletetable2 AFTER  DELETE ON recruiter
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = old.username,energeia='delete',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 
 
  CREATE TRIGGER inserttable3 AFTER INSERT ON etaireia
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = new.name,energeia='insert',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

  CREATE TRIGGER updatetable3 AFTER UPDATE ON etaireia
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = new.name,energeia='update',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

CREATE TRIGGER deletetable3 AFTER  DELETE ON etaireia
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = old.name,energeia='delete',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 
 
 CREATE TRIGGER inserttable4 AFTER INSERT ON job
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = new.recruiter,energeia='insert',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

  CREATE TRIGGER updatetable4 AFTER UPDATE ON job
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = new.recruiter,energeia='update',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 

CREATE TRIGGER deletetable4 AFTER  DELETE ON job
 FOR EACH ROW 
 Insert istoriko SET istoriko.username = old.recruiter,energeia='delete',pinakas='user',imerominia=sysdate(3),time=cast(sysdate(3) as time) 