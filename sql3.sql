create database cmp_kesowers;

-- to tell mysql what we are focused on,
-- use the keyword "use"

use cmp_kesowers;

-- dropping a database
-- drop database cmp_kesowers;

-- altering a db

alter database cmp_kesowers READ ONLY = 1;
-- drop database cmp_kesowers;
-- turn off read only

alter database cmp_kesowers READ ONLY = 0;