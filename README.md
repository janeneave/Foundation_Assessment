# Theory Questions

1.1) __Relational Database Management System__. It is type of database management system which stores and enables access and querying to data that is related to each other, based on the relational model of representing data in tables.

1.2) Using a string without quotes in a print statement will raise a __NameError__. This is because Python will interpret the quoteless string as a variable name, and undefined variables raise a NameError.

1.3) __Git__ is a widely used __version control system used for tracking changes to code and computer files during software development.__ It allows for multiple copies of a (software development) project’s codebase/files to be worked on independently and enables co-ordination and collaboration of code from devs working simultaneously using the same code. It is used in combination with GitHub, which allows local changes to code to be to be pushed and merges to the remote repo (normally after making a pull request).

1.4) Multiple fields being used as a primary key is called a __Composite Key__.

1.5) __Application Programming Interface__ ( a software intermediary which allows applications to communicate/access/share data with and across one another) e.g. __The Met Office DataPoint API__ is a weather related API which provides access to a large range of weather data and forecast information for the UK. Devs can use this API to retrieve information about the weather (like conditions, forecasts, warnings) to integrate into the apps, website and services they are developing. 

1.6) Responsibilities of Developers:
- __Code Creation and maintenance:__ Ordinarily, devs must research, design, implement and then manage the software they create, checking it for bugs and ensuring the integrity and robustness of the code they write.
- __Code Testing and Development:__ Devs have to make sure they are testing their code and evaluating the outcome of these tests to see if there are ways to modify the existing code to make it better/simpler/faster to achieve their objectives, whilst meeting deadlines.  They can then develop and work on these modifications further.

1.7)

1.8) This function could throw an error if incorrect data types are given as arguments to the function in place of the parameters e.g. if ‘numerator’ and/or ‘denominator’ are not given as numerical data types it would raise a __TypeError__. This means if the you attempted to call the function to with a numeric value (e.g. float/integer) and a non-numeric value (e.g. string or a list) in either argument position, or attempted to use two non-numeric values, the function cannot be carried out.  This is because the divide operator isn’t supported to divide across non-numerical data types, e.g. won’t divide a ‘list’ by an ‘int’ or a ‘string’ by another ‘string’, or a n ‘float’ by a ‘string’ etc. (Instead you could try using split() for a string or looping through a list.)

A __try-except__ block could be used to catch this exception. This means that when the function is called, first the ‘try:’ block will be attempted, and if any Exceptions arise (e.g. attempting to divide by a string) the except block will run and print the Type Error instead.
```python
def find_percentage(numerator, denominator):
    try:
        return numerator / denominator * 100
    except TypeError as exc:
        print(f'TypeError: {exc}')
```
With this Error Handling, attempting to divide a string by an integer as follows:
```python
print(find_percentage('10', 5))
```
Will result in the following error being printed in the console:
```python
TypeError: unsupported operand type(s) for /: 'str' and 'int' 
```
(It would also throw a ZeroDivisionError if the denominator was set to 0, as a division by 0 is not possible.)


1.8) __git branching is a technique to create and allow for seperate lines of development within a single repository.__ Branches are created (using 'git branch <branch_name>') often in parallel  to others, enabling many people to work con-currently and many changes to be made simultaneously. Branches can be specific to a feature or piece of code a person is working on, or can be used to encapsulate specific sets of changes without touching the main branch (or trunk) in the remote repo, until a pull request and merge is made. This means devs can work on feature developments, perform bug fixes, experiment with code and run tests independently without interfering with each other's code. Each branch represents a seperate line of development. Once a branch is made, 'git add' and 'git commit' can be used to add these changes to the person's local version of the repo, and then 'git push' can be used to push from the branch on the local repo to the remote repo. Then a Pull Request can be created, which can be checked by the dev or others, and when ready it is accepted and then merged into the trunk. Or 'git merge' can be used. Multiple branches can be created, and 'git checkout <branch_name>' is used to switch between them. Git branching enables an organised way of managing the development process and minimises the risk of destabilising the main/trunk codebase, especially when multiple people are working in parallel.

1.9)
 This restaurant ordering system is designed with the aim to follow a client-server model. It will use a web-based front end for customers, which has potential to be devloped into an app for iOS or Android. It also takes into account staff interacting with a backend server to manage order processing, stock, menu and customer databases, as well as it would most likely require some service integration from external sources to handle payments. 

__List of key requirements__
- A User Interface: the website will have a landing/home page, plus the ability for users to sign up/in. Once logged in, the website will offer the ability to edit user information in a profile area, adjust settings and view the potential restaurants which are avilable to order from. If selected, restaurants will each have a dedicated page that includes opening times, menu options, prices, location and contact details. There will also be a rating displayed and a place to read reviews and/or see real customer photos. There will be a menu bar to navigate the website, as well as a search bar to find specific dishes or cusisines. It would also incoporate a random spin-wheel for if the user just can't decide, a
- Menu Management.
- Ordering and Payment: Once the user has selected a resturant, the user can scroll through the menu, which will include the option for restaurant owners to add photos of the dishes, and select the food and beverages they wish to order.
- Order Processing.
- Admin/Staff Management.

__Main Considerations and Problems__
- Scalability.
- Data Security.
- Real-time Updates.
- Integration.
- Accesibility
- Usability.

__Potential Components or Tools__
- Frontend Development Tools: React (JavaScript frameworks) for building customer/staff interfaces.
- Backend Framework: Python for server-side logic and MySQL databases data storage and management.
- Payment Gateway Integration: A secure payment gateway, like PayPal or Google/Apple Pay.
- Real-time Communication: Server-sent events to keep track of real-time updates on order statuses.
- Cloud Services: Use one like Google Cloud to host the server and allow for scalability so the website can handle spikes of activity at peak times and larger numbers of users.
- Security Tools: Will adhere to GDHC guidelines as well as utilise encryption techniques to secure user information and payment data.