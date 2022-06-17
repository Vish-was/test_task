# Desset test_task

#Candidate Name:  Vishwas Nahar
#Test Date: 17th June, 2022
#Solution Link: 



#Instructions for candidates: 

#Time allocated for the assessment - 45 minutes wherein 30 minutes for the coding part and 15 minutes of the written assessment.

#Please answer the questions given in the Ruby. 
#Please  upload your solutions as code on your GitHub account as a gist or repository and share the link with the interviewer by the end of the interview.
#The gists should be named 'solution-01.rb`, `solution-02.rb` and `solution-03.rb`.

#PART 1:

#Question 1 (5 minutes time)

#Write a function that takes a string as in input and outputs the string in reverse:
#str = "hello"
reverse(str) => "olleh"

Question 2 (10 minutes time)

Write a function that parses following input and prints date in your local timezone:
input = "{\"time\":\"2022-06-17T05:52:39.787Z\"}"
parser(input) => "2022-06-17 07:54:13 +0200"

Question 3 (15 minutes time)

A fibonacci sequence is defined like the following
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
The next number is found by adding up the two numbers before it. The first two numbers of the sequence are 0,1. 
Write a function that outputs the nth number in the series
For example:
fibonnaci(0) => 0
fibonnaci(1) => 1
fibonnaci(4) => 3
fibonacci(7) => 13

Your function should work for large numbers of n.

PART 2:

Answer 3 from the following:

1. API design - How would you approach implementing breaking changes on API. 
Namespacing like we can have V1 (version 1) / V2 (version 2).
We have to start with proper routing structure like dont use direct resource routes
Follow thin model and thin controller principal like move controller code to Service object and model code to Concerns and Modules
 

2. API design - nested resources vs flat structure. For example /api/orders/:order_id/order_items vs /api/order_items?order_id=:order_id. Why?
When we have association involves like Particular Order has_many OrderItems then we will use the nested resources 
When we want all data no association thing is there then we use flat structure


3. Notifications are a critical part of any e-commerce application. Currently these are being sent automatically async/on the background through multiple channels (email, sms, push). Customer support gives you a notice that some customers are receiving duplicate notifications in some channels and some customers are not receiving notifications at all. What would be your top 3 places where to look/how to debug this situation?
First i’ll check the lib like where the notification is striking like action cable or Twillio or SQS
Then we check the controller action for that email or SMS to find the cause of it
Finally we have to check the looping point where these messages are calling.

4. Build in house vs use 3rd party service - ie using self hosted Elasticsearch vs SaaS solution like Algolia, bare kubernetes on own cluster vs managed kubernetes (EKS, GKE).
When we have our own cluster then we know which service we want.

If we are adding 3rd party lib then it's fast to integrate and also easy to manage with their support.

5. You're building an integration with a 3rd party service that needs to synchronize data between your system and external service. For example product availability synchronisation in shopify or shipment status synchronization with DHL). What are the first two issues you would anticipate and how would you overcome them?

Data sync 
Sometime we did not sync our order properly data mismatch happen
Webhook issues
            We face issue with calling webhook with these services in Shopify, Shipstation etc.
