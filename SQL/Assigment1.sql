/* 1. Soru: Write a query that displays InvoiceId, CustomerId and total dollar 
amount for each invoice, sorted first by CustomerId (in ascending order), 
and then by total dollar amount  (in descending order). */

SELECT InvoiceId, CustomerId, Total FROM invoices ORDER BY CustomerId ASC, Total DESC; 

/* 2. Soru: Write a query that displays InvoiceId, CustomerId and total 
dollar amount for each invoice, but this time sorted first by total dollar
 amount (in descending order), and then by CustomerId (in ascending order). */

SELECT InvoiceId, CustomerId, Total FROM invoices ORDER BY Total DESC, CustomerId ASC;

/* 3. Soru: Compare the results of these two queries above. How are 
the results different when you switch the column you sort on first? 
(Explain it in your own words.) */

/*  İlk soruda öncelikli olarak CustomerId ye göre düşükten yükseğe sıralama yaptı, 
CustomerId'leri aynı olanlar arasında faturaları yüksekten düşüğe göre sıraladı. 
İkinci sorguda ise öncelikli olarak fatura miktarlarına göre yüksekten düşüğe göre 
sıraladı. Ancak fatura miktarları aynı olanları kendi içinde 
CustomerId ye göre düşükten yükseğe doğru sıraladı.    */

/*  4. Soru: Write a query to pull the first 10 rows and all columns 
from the invoices table that have a dollar amount of total greater 
than or equal to 10. */

SELECT * FROM invoices WHERE Total >= 10 LIMIT 10;

/* 5. Soru: Write a query to pull the first 5 rows and all columns from 
the invoices table that have a dollar amount of total less than 10. */

SELECT * FROM invoices WHERE Total < 10 LIMIT 5;

/* 6. Soru:  Find all track names that start with 'B' and end with 's'. */

SELECT Name FROM tracks WHERE Name LIKE 'B%s';

/* 7. Soru: Use the invoices table to find all information regarding invoices
 whose billing address is USA or Germany or Norway or Canada and invoice date
  is at any point in 2010, sorted from newest to oldest. */ 

SELECT *
FROM invoices
WHERE BillingCountry In ('USA', 'Germany', 'Norway', 'Canada') 
AND InvoiceDate LIKE  '2010%' 
ORDER BY InvoiceDate DESC;


