
CREATE TABLE  "new_Future"(new int,
  Restaurant VARCHAR,
	YOY_Sales int,
 	Sales  bigint ,
 	YOY_Units int,
  Franchising Varchar,
  City Varchar,
  State Varchar
);
select * from "new_Future";

CREATE TABLE new_Top250(new int,
  Restaurant VARCHAR,
	YOY_Sales int, 	
  Sales  bigint ,
	YOY_Units int,
  Segment Varchar
);
SELECT * FROM "new_Top250";

-- Join Statement
SELECT "new_Future"."Restaurant","new_Future"."YOY_Sales","new_Future"."Sales",new_Future"."YOY_Units","new_Top250"."Restaurant","new_Top250"."YOY_Sales","new_Top250"."Sales","new_Top250"."YOY_Units"
FROM "new_Future"
JOIN new_Top250"
ON new_Future"new"=new_Top250"new";

-- Altering Data Types
ALTER TABLE "new_Future"
ALTER COLUMN "YOY_Sales" TYPE DECIMAL
USING "YOY_Sales"::decimal;

ALTER TABLE "new_Future"
ALTER COLUMN "YOY_Units" TYPE DECIMAL
USING "YOY_Units"::decimal;

select * from "new_Future"

