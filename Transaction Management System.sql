create table account(act_no varchar2(8), act_name varchar2(25), act_balance number(12), act_dob date);
create table account_branch(act_no varchar2(8), act_name varchar2(25), act_branch varchar2(15));
create table account_city(act_no varchar2(8), act_name varchar2(20), act_city varchar2(15));

insert into account values('SY3501DS', 'Swadia Dhruvi','36000','14-JUL-2001');
insert into account values('SY3502DS', 'Bhole Rakshita','30400','06-NOV-1993');
insert into account values('SY3503DS', 'Lokhande Ashmit','55500','14-DEC-1997');
insert into account values('SY3504DS', 'Sinha Aman','46400','30-JAN-2000');
insert into account values('SY3505DS', 'Ghosh Riya','39900','7-FEB-2002');
insert into account values('SY3506DS', 'Anavkar Aishani','33060','1-JUL-1998');
insert into account values('SY3507DS', 'Gaikwad Om','120570','13-SEP-2001');
insert into account values('SY3508DS', 'Karmokar Shikha','67800','15-JUN-1994');
insert into account values('SY3509DS', 'Kotwal Sandesh','65570','23-AUG-1995');
insert into account values('SY3510DS', 'Kadam Parth','35600','05-MAY-1999');
insert into account values('SY3511DS', 'Naidu Mirthula','35300','07-MAY-1999');
insert into account values('SY3512DS', 'Parab Kedar','35040','12-JUL-2001');
insert into account values('SY3513DS', 'Raut Saptshree','50400','06-NOV-1993');
insert into account values('SY3514DS', 'Vishwakarma Shiv','55800','16-DEC-1997');
insert into account values('SY3515DS', 'Mayekar Prathamesh','46000','31-JAN-2003');
insert into account values('SY3516DS', 'Parui Sowmen','379660','15-MAY-2002');
insert into account values('SY3517DS', 'Patil Sanchita','3505560','03-JUL-1998');
insert into account values('SY3518DS', 'Rajpuut Vibha','1244070','27-SEP-2001');
insert into account values('SY3519DS', 'Sharma Samriddhi','87800','11-JUN-1994');
insert into account values('SY3520DS', 'Veerkar Sanket','65060','22-AUG-1995');

insert into account_branch values('SY3501DS', 'Swadia Dhruvi','Manjalpur');
insert into account_branch values('SY3502DS', 'Bhole Rakshita','MG Road');
insert into account_branch values('SY3503DS', 'Lokhande Ashmit','Borivali');
insert into account_branch values('SY3504DS', 'Sinha Aman','Mayapuri');
insert into account_branch values('SY3505DS', 'Ghosh Riya','Ghogha');
insert into account_branch values('SY3506DS', 'Anavkar Aishani','Powai');
insert into account_branch values('SY3507DS', 'Gaikwad Om','Hinjewadi');
insert into account_branch values('SY3508DS', 'Karmokar Shikha','Maninagar');
insert into account_branch values('SY3509DS', 'Kotwal Sandesh','Gachibowli');
insert into account_branch values('SY3510DS', 'Kadam Parth','Mira Road');
insert into account_branch values('SY3511DS', 'Naidu Mirthula','Dahisar');
insert into account_branch values('SY3512DS', 'Parab Kedar','Golkonda');
insert into account_branch values('SY3513DS', 'Raut Saptshree','Shiv road');
insert into account_branch values('SY3514DS', 'Vishwakarma Shiv','Meena Nagar');
insert into account_branch values('SY3515DS', 'Mayekar Prathamesh','Dhanu');
insert into account_branch values('SY3516DS', 'Parui Sowmen','Bhayander');
insert into account_branch values('SY3517DS', 'Patil Sanchita','Hinjewadi');
insert into account_branch values('SY3518DS', 'Rajpuut Vibha','Maninagar');
insert into account_branch values('SY3519DS', 'Sharma Samriddhi','Gachibowli');
insert into account_branch values('SY3520DS', 'Veerkar Sanket','Dahisar');

insert into account_city values('SY3501DS', 'Swadia Dhruvi','Vadodara');
insert into account_city values('SY3502DS', 'Bhole Rakshita','Bangalore');
insert into account_city values('SY3503DS', 'Lokhande Ashmit','Delhi');
insert into account_city values('SY3504DS', 'Sinha Aman','Mumbai');
insert into account_city values('SY3505DS', 'Ghosh Riya','Bhavnagar');
insert into account_city values('SY3506DS', 'Anavkar Aishani','Mumbai');
insert into account_city values('SY3507DS', 'Gaikwad Om','Kolkata');
insert into account_city values('SY3508DS', 'Karmokar Shikha','Pune');
insert into account_city values('SY3509DS', 'Kotwal Sandesh','Ahmedabad');
insert into account_city values('SY3510DS', 'Kadam Parth','Hyderabad');
insert into account_city values('SY3511DS', 'Naidu Mirthula','Vadodara');
insert into account_city values('SY3512DS', 'Parab Kedar','Bangalore');
insert into account_city values('SY3513DS', 'Raut Saptshree','Delhi');
insert into account_city values('SY3514DS', 'Vishwakarma Shiv','Mumbai');
insert into account_city values('SY3515DS', 'Mayekar Prathamesh','Bhavnagar');
insert into account_city values('SY3516DS', 'Parui Sowmen','Mumbai');
insert into account_city values('SY3517DS', 'Patil Sanchita','Kolkata');
insert into account_city values('SY3518DS', 'Rajpuut Vibha','Pune');
insert into account_city values('SY3519DS', 'Sharma Samriddhi','Ahmedabad');
insert into account_city values('SY3520DS', 'Veerkar Sanket','Hyderabad');



select * from account;
select * from account_branch;
select * from account_city;

select avg(act_balance)
from account;

select count(*)
from account_city;

select act_name,act_dob
from account
where act_name like 'S%';

select act_no, act_balance
from account
where act_balance in (select act_balance
                      from account
                      where act_balance >= 55000);


DECLARE 
xact_no account.act_no%type;
xact_balance account.act_balance%type;
opt number(1); 
deposit number(10);
withdrawal number(10);

BEGIN
xact_no:= :Enter_Account_Number;
opt:= :1Deposit_2Withdrawal_3Balance;  
select act_balance into xact_balance 
from account
where act_no=xact_no ; 
  
IF( opt = 1 ) THEN
deposit:= :Enter_Deposit_Amount;
update account
 set act_balance=act_balance+deposit
where act_no=xact_no ; 

xact_balance :=xact_balance +deposit;
dbms_output.put_line('Rs. '||deposit||' has been creadited in your account');
dbms_output.put_line('Your final balance is Rs. '||xact_balance );
                          
ELSIF( opt = 2 ) THEN 
withdrawal:= :Enter_Withdrawal_Amount;
    IF ( withdrawal<=xact_balance ) THEN
    update account
     set act_balance=act_balance-withdrawal
    where act_no=xact_no ;
    
    xact_balance:=xact_balance -withdrawal;
    dbms_output.put_line('Rs. '||withdrawal||' has been debited in your account');
    dbms_output.put_line('Your final balance is Rs.'||xact_balance );
    
    ELSE
    dbms_output.put_line('Your withdrawal amount is greater than balance');
    dbms_output.put_line('Your transaction failed');
    dbms_output.put_line('Your final balance is Rs.'||xact_balance ); 
    END IF;
ELSE
dbms_output.put_line('Your balance is Rs. '||xact_balance );
END IF;
    
  
END;
/ 