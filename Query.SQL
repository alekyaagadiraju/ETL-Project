
-- Create Table

create table rank_Top250(
  Restaurant VARCHAR,
  YOY_Sales int,
  Sales bigint ,
  YOY_Units int
);
   
select * from rank_Top250

create table rank_Future(
  Restaurant VARCHAR,
  YOY_Sales int,
  Sales bigint ,
  YOY_Units int
);
   
select * from rank_Future

-- Join Statement
SELECT "rank_Future"."Restaurant", "rank_Future"."YOY_Sales", "rank_Future"."Sales", "rank_Future"."YOY_Units", "rank_Top250"."Restaurant", "rank_Top250"."YOY_Sales", "rank_Top250"."Sales", "rank_Top250"."YOY_Units"
FROM "rank_Future"
JOIN "rank_Top250"
ON "rank_Future"."Rank"= "rank_Top250"."Rank";

-- Altering Data Types
ALTER TABLE "new_Future"
ALTER COLUMN "YOY_Sales" TYPE DECIMAL
USING "YOY_Sales"::decimal;

ALTER TABLE "new_Future"
ALTER COLUMN "YOY_Units" TYPE DECIMAL
USING "YOY_Units"::decimal;

select * from "new_Future"

