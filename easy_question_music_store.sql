---Q1>Who is the senior most employee based on job title?
select *from employee
order by levels desc
limit 1

---Q2>Which country have most invoices?
select*from invoice
select count(*) as count_country,billing_country
from invoice
group by billing_country
order by count_country desc
limit 1

---Q3>What are top 3 values of total invoices?
select total from invoice
order by total desc
limit 3

---Q4>Which city has the best customers? 
---We would like to throw a promotional Music Festival in the city we made the most money.
---Write a query that returns one city that has the highest sum of invoice totals.
---Return both the city name & sum of all invoice totals
select *from invoice
select SUM(total) as total_invoice, billing_city from invoice
group by billing_city
order by total_invoice desc
limit 1

---Q5>Who is the best customer? The customer who has spent the most money will be declared the best customer. 
---Write a query that returns the person who has spent the most money
select*from customer
select customer.customer_id,customer.first_name,customer.last_name ,sum(invoice.total) as total_invoice
from customer
join invoice on customer.customer_id = invoice.customer_id 
group by customer.customer_id
order by total_invoice desc
limit 1















