
-- select * from "new_Future"

SELECT "rank_Future"."Restaurant", "rank_Future"."YOY_Sales", "rank_Future"."Sales", "rank_Future"."YOY_Units", "rank_Top250"."Restaurant", "rank_Top250"."YOY_Sales", "rank_Top250"."Sales", "rank_Top250"."YOY_Units"
FROM "rank_Future"
JOIN "rank_Top250"
ON "rank_Future"."Rank"= "rank_Top250"."Rank";