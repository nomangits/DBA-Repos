
-- add database to availability group

-- first take full backup and log backup of database on primary replica

BACKUP DATABASE ATESTDB TO DISK = 'L:\AG\ATESTDB.bak';

BACKUP LOG ATESTDB TO DISK = 'L:\AG\ATESTDB.trn'

-- then restore full backup and log backup of database with norecovery on all secondary replicas
-- MAKE SURE THE PATH, TO WHICH DB FILES WILL BE RESTORED, ALREADY EXISTS

RESTORE DATABASE ATESTDB FROM DISK = 'L:\AG\ATESTDB.BAK' WITH NORECOVERY;

RESTORE LOG ATESTDB FROM DISK = 'L:\AG\ATESTDB.TRN' WITH NORECOVERY;

-- now you can select 'join only' when adding the database in availability group

