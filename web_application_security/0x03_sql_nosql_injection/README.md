SQL, noSQL Injection

Resources
Read or watch:

    SQL vs. NoSQL: What’s the difference ?
    Understanding SQL Injection
    SQL Injection Knowledge Base
    A Comprehensive Guide To NoSQL Injection
    NoSQL Injections: Overview and Prevention
    SQL vs NoSQL or MySQL vs MongoDB
    Preventing SQL Injection Vulnerabilities

References:

    OWASP: SQL Injection Prevention Cheat Sheet
    Hacker Tricks: SQL Injection
    Hacker Tricks: NoSQL Injection
    MITRE: CWE-89: SQL Injection
    MITRE: CWE-943: Improper Neutralization of NoSQL Query Syntax

Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

    What is SQL Injection?
    How does noSQL Injection differ?
    What are the risks of SQL Injection?
    Describe a UNION attack.
    Explain Blind SQL Injection.
    How to prevent SQL Injections?
    What is a Parameterized Query?
    What are Stored Procedures in SQL?
    Why is Input Validation important?
    How does noSQL Injection occur in MongoDB?
    What is the role of ORMs in preventing injections?
    Can noSQL Databases like MongoDB be injected?
    What is Escaping User Input in SQL queries?
    Explain the use of LIMIT in SQL injection attacks.
    How to use Regular Expressions for input validation?
    What is a NoSQL Injection Attack Vector?

Requirements
General

    Allowed editors: vi, vim, emacs.
    All your scripts will be tested on Kali Linux.
    All your scripts should be exactly one line long ($ wc -l file should print 1)
    All your files should end with a new line (Why?)
    A README.md file, at the root of the folder of the project, is mandatory
    For this project, your focus will be on the target cyber_websec_0x01.

For this Project, you are not allowed to use sqlmap
Tasks
0. SQLi - Basic Injection Discovery

The first step in exploiting SQL injection vulnerabilities is to identify which parameters are vulnerable.<br />

Your goal is to identify which parameters in the application’s web pages are susceptible to SQL injection attacks. For that you should:

    Access the machine cyber_websec_0x01 through the VPN.

    Navigate to: http://web0x01.hbtn/a3/sql_injection/. (dont forget to edit your /etc/hosts)

    Search for the vulnerable paramters.

    <pre>$ echo “paramters_name” > 0-vuln.txt</pre>

*<pre>

Helpful Instructions:

    Start by navigating through the application’s various pages.

    Pay special attention to any pages that display data from the database, such as product listings or user profiles.

    Look for URL parameters, form inputs, or any other input fields where user-supplied data is reflected in the page content or influences the data displayed.

    Use simple payloads such as a single quote (') or a boolean condition (' OR '1'='1) appended to parameters in URLs or input fields.

    Observe the application’s response for any errors, unusual behavior, or changes in the displayed data that indicate a successful injection.

</pre>*
