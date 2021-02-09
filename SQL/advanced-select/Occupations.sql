-- https://www.hackerrank.com/challenges/occupations/problem

-- Step 1. Select the source table with a RowNumber column
/*
ROW_NUMBER ( )   
    OVER ( [ PARTITION BY value_expression , ... [ n ] ] order_by_clause )  */

/*
SELECT ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) as RowNumber , 
    Name, Occupation
FROM Occupations
*/

    
-- Step 2. PIVOT the source table
/* 
RowNumber Name Occupation
1 Eve Actor
2 Jennifer Actor
3 Ketty Actor
4 Samantha Actor
1 Aamina Doctor
2 Julia Doctor
3 Priya Doctor

We have only one name for one occupation for each rownumber. That means MIN(Name) = Max(Name).  
*/

/*
SELECT <non-pivoted column>,  
    [first pivoted column] AS <column name>,  
    [second pivoted column] AS <column name>,  
    ...  
    [last pivoted column] AS <column name>  
FROM  
    (<SELECT query that produces the data>)   
    AS <alias for the source query>  
PIVOT  
(  
    <aggregation function>(<column being aggregated>)  
FOR   
[<column that contains the values that will become column headers>]   
    IN ( [first pivoted column], [second pivoted column],  
    ... [last pivoted column])  
) AS <alias for the pivot table>  
<optional ORDER BY clause>;  
*/

SELECT Doctor, Professor, Singer, Actor FROM
(SELECT Name, Occupation, 
 ROW_NUMBER() 
    OVER (PARTITION BY Occupation ORDER BY Name) as RowNumber 
 FROM Occupations) AS SourceTable PIVOT 
(MAX(Name) FOR Occupation IN (Doctor, Professor, Singer, Actor)) AS PivotTable