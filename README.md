# Theory Questions (Alternative Assessment)

1.1) __Relational Database Management System__. It is type of database management system which stores and enables access and querying to data that is related to each other, based on the relational model of representing data in tables.

1.2) Using a string without quotes in a print statement will raise a __NameError__. This is because Python will interpret the quoteless string as a variable name, and undefined variables raise a NameError.

1.3) __Git__ is a widely used __version control system used for tracking changes to code and computer files during software development.__ It allows for multiple copies of a (software development) project’s codebase/files to be worked on independently and enables co-ordination and collaboration of code from devs working simultaneously using the same code. It is used in combination with GitHub, which allows local changes to code to be to be pushed and merges to the remote repo (normally after making a pull request).

1.4) Multiple fields being used as a primary key is called a __Composite Key__.

1.5) __Application Programming Interface__ ( a software intermediary which allows applications to communicate/access/share data with and across one another) e.g. __The Met Office DataPoint API__ is a weather related API which provides access to a large range of weather data and forecast information for the UK. Devs can use this API to retrieve information about the weather (like conditions, forecasts, warnings) to integrate into the apps, website and services they are developing. 

1.6) Responsibilities of Developers:
- __Code maintenance:__ Ordinarily, once devs have researched, designed, written and implemented their code, they then must manage what they have created, checking it for bugs and ensuring the integrity and robustness of the code they write and how it works within the project's software devlopement overall too.
- __Code Testing and Integration:__ Devs have to make sure they are testing their code and evaluating the outcome of these tests to see if there are ways to modify the existing code to make it better/simpler/faster to achieve their objectives, whilst meeting deadlines.  They can then develop and work on these modifications further.

1.7) Considerations/Problems with designing a shopping website: 
- __Scalability:__ would have to maintain the website so that it’s performance isn’t affected over time, as slow loading speeds can be off-putting for customers. Moreover, the website must be able to handle spikes of activity at peak times and when site traffic increases. Conducting stress testing and using a cloud server, like Google Cloud or Azure, to host the server could reduce this strain.
- __Data Security:__ it is important to protect that user information and make sure it is not compromised and that the data we collect complies with the law (like the GDHC). Additionally, payment information should be kept secure. Payment gateway (vulnerabilities could enable unsafe transactions and lead to data breaches or fraudulent activity. Attempt to use a fairly secure payment gateway, like PayPal or Google/Apple Pay.
- __Accessibility:__ It is important to ensure the site’s design is accessible to a diverse customer base, for example, takes into account people with impaired vision or colour-blindness. Can integrate a read-aloud system wand alt text for clothing descriptions, as well as offering a high contrast/colour-blind friendly interface. It would also be good to consider establishing an effective customer services integration into the website, which can offer assistance so customers aren’t left disappointed or dissatisfied and can have their problems resolved.
- __Usability:__ would have to consider the user-interface design to make it intuitive to navigate easily, so that customers want to return with the aim to reduce “bounce rate”. Also important to consider ensuring the staff/business-interface is easy to navigate, access and straightforward to conduct the necessary business actions on, such as managing inventory. We would also want to consider designing the interface to be responsive to difference devices and screen sizes to maintain consistency of look and functionality for users.


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
(It could also throw a ZeroDivisionError if the denominator was set to 0, as a division by 0 is not possible.)

1.9) 


1.10) SDLC stands for __Software Development Life Cycle__. It is a structured process of 7 steps that enables the systematic development of software. The SDLC provides a methodological approach to devloping software, where the previous stages lay the groundwork for the following stages to build upon. SDLC methodologies that can be followed include: Agile, Lean, Iterative and Waterfall.

The stages:
1. Planning: also referred to as the feasibility stage, and is where the outline for the upcoming dev cycle is developed for the project. In this stage, the problem, scope and costs of the project are considered and the objective(s) are determined, which are used to develop the project's design and create it's schedule. It is also used to theoretically solution problems before they arise, and to secure funding if necessary. 
2. Requirements: Consists of researching and analysying the specific details of the newly designed system and bringing together the necessary tools that will be required to complete the project. Can also be when first prototypes are designed. Includes laying out specifications for software, hardware and network requirments. To aid this stage, the use og visual techniques, like Wireframe or Blueprint, or functional techniques, like 'AS/WHEN/THEN', can be implemented.
3. Design: This builds upon the foundations laid down in the previous two stages, and is when the details of the project are fleshed out and a clearer picture of what it will "look like" takes shape. Normally consists of creating the logical structure that can be used when programming. A design document is ususally created to be referenced, and the goal of this stage it to lay out more detailed plans for the next stages of the cycle.
4. Implement Software: Devs will write the code based on the design specifications and build the software for the project (an application/website etc). If conducted properly, in theory, the previous 3 stages should aid this stage in running smoothly, enabling devs to write the product program code. 
5. Test and Integrate: Once the software is built, it is not yet ready to be deployed. It must first be thoroughly tested to ensure their are no bugs and that the user expirience will be positive or that quality code that meets the project's objectives is being delivered. Devs will comb through the code running tests, using methods like unti testing, integration testing, performance testing, secrutity testing. Any bugs or deviations are noted, tracked, fixed, and then retested, which might need to be repeated multiple times. Following testing, often code that has been worked on by different people or teams in modules, will be brought together. Different modules and designs will be intergrated into the main source code, and eventually installed.
6. Deploy: The output of testing and integration should be functional software that is market ready. The result of this phase is the release to production of working software. In mature enterprises, ideally, this stage is highly automated and appears seamless.
7. Maintain: Once the project has been deployed, this does not mean the work is concluded. It must be maintained and act out the necessary steps to fix residual bugs or handle any issues they come across during maintainance testing or that are reported by users of their software. Additionally, devs will implement the necessary changes and new SDLCs can be generated when it is necessary to add or fix pieces of software.

