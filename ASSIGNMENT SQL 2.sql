
----Question 1 : Return the customer IDs of customers who have spent at least $110 with the staff member 
----------who has an ID of 2.

select * from payment


SELECT CUSTOMER_ID, SUM(AMOUNT) FROM PAYMENT 
WHERE STAFF_ID=2 
GROUP BY CUSTOMER_ID 
HAVING SUM(AMOUNT) >=110
ORDER BY CUSTOMER_ID





SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id =2
GROUP BY customer_id,staff_id
HAVING SUM(amount) >= 110
ORDER BY customer_id


-----Question 2 : How many films begin with the letter J?

SELECT COUNT(*) FROM FILM WHERE TITLE ILIKE 'J%'


----Question 3 : What customer has the highest customer ID number whose name starts with an 'E' 
--------and has an address ID lower than 500?


SELECT CUSTOMER_ID,FIRST_NAME,ADDRESS_ID, COUNT(CUSTOMER_ID) AS COUNT_CUST FROM CUSTOMER WHERE FIRST_NAME ILIKE 'E%' 
GROUP BY CUSTOMER_ID,FIRST_NAME,ADDRESS_ID HAVING ADDRESS_ID<500 ORDER BY CUSTOMER_ID DESC LIMIT 1

