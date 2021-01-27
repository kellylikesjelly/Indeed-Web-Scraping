# Indeed-Web-Scraping
The Indeed web scraper I built during Winter Break 2020! Scrapes company names, job titles, intern responsibilities and intern requirements. In the future, I hope to create useful dashboards using the scraped data to inform Info Sys/Com Sci students of which internship skills are in high demand.

I built this because as a fellow Info Sys student preparing myself for internships, I found the process of manually checking and aggregating job requirements, companies to work at etc. really frustrating and repetitive. I also wanted to hone my web scraping, Python and data management skills. I ended up struggling a lot (a huge variety of HTML formatting, irrelevant jobs slipping in) and tried my best to overcome them (fixing the BeautifulSoup find all requirements, changing the regex matching string). But I also learnt a lot :) I picked up Python SQL skills, revised my database management skills (creating the right primary keys to reduce repetition of job entry data), became more familiar with using regex, and most importantly became more adept in using BeautifulSoup to scrape! I'm happy that I've learnt so much, but I still have lots more to learn! :)

Note: I referred to online resources such as StackOverflow to get started and to fix bugs.


A rough outline of how the scraper works:
1. Get the search result pages for the corresponding job type. For example, for a data analyst, the function get_result_pages('data analyst') would use request module to retrieve each result page (consisting of multiple job postings), then use BeautifulSoup's parser to create a soup. The links to each job posting are extracted.
2. Use request to retrieve each job posting's page. After creating soups, its findAll method is used with regex to extract the relevant information.
3. A connection to local MySQL database is created. The data is then inserted into the database. (The database was created beforehand with the columns and keys).
4. Data can be retrieved and tokenized using NLTK for data analysis purposes.

Please check my scraper out! Hopefully it will be useful to you. Please leave suggestions and comments if you'd like to help this newbie improve.
