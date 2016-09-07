2. What are some common HTTP status codes?

There are 5 classes of HTTP status codes

1XX class Informational: This class of status code idicates a provisonal response at consist of statu line and optional headers. they can be terminates with and empty line.

2xx class Success: This class of status codes indicates the action requested by the client was received, understood, accepted, and processed successfully

3xx class Redirection: This class of status code indicates that further action needs to be taken by the user agent in order to fulfill the request. The action required MAY be carried out by the user agent without interaction with the user if and only if the method used in the second request is GET or HEAD. A client SHOULD detect infinite redirection loops, since such loops generate network traffic for each redirection.

4xx class Client Error: The 4xx class of status code is intended for cases in which the client seems to have errored.

5xx clas Server Error: Response status codes beginning with the digit "5" indicate cases in which the server is aware that it has erred or is incapable of performing the request.

What is the difference between a GET request and a POST request? When might each be used?

GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource

GET requests can be cached
GET requests remain in the browser history
GET requests can be bookmarked
GET requests should never be used when dealing with sensitive data

POST requests are never cached
POST requests do not remain in the browser history
POST requests cannot be bookmarked
POST requests have no restrictions on data length

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are usually small ids text files that are stored in your computers browser directory or data subfolders. Cookies are created when the browser communicates with a websites and aids in tracking a user’s movements through the sites and any information you may have voluntarily given while visiting the website, such as email address.