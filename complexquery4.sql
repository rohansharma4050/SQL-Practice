declare @todays_date date;
declare @number int;

set @todays_date = '2025-02-25';
set @number = 9;

select dateadd(week,@number,dateadd(day,6-datepart(weekday,@todays_date), @todays_date))