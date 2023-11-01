# Theory Questions

1.1) SDLC stands for __Software Development Life Cycle__. It is a structured process that enables the development of software. SDLC methodologies that can be followed include, for example, Agile and Waterfall.

1.2) A __ZeroDivisionError__, because a division by 0 is not possible.

1.3) __git push__ is used to transfer commits made on the a local repo to the remote repo.

1.4) NULL is a special marker used in SQL to represent that a __data value it is in place of does not exist in the database, it is unknown or missing__.

1.5)	Scrum Master chiefly facilitates the application of Scrum and keeps the Scrum up to date. They're responsibilities include: 

- a.) __Organising and conducting Scrum events__ such as: Sprint Planning/Reviews, Daily Stand-Ups and Restrospectives
- b.) __Coaching, mentoring and training the teams.__ Helps teams to become self-organising, empowers them with training and aids them by removing impediments. 

1.6)Types of debugging:

- a.) __Exception Handling.__ An exception is an object in Python representing an error. Errors are broadly categorised into two types: Syntax errors and Logical errors (exceptions). Exceptions are raised when a Python script meets a situation it can't handle and must be taken care of right away or else the programme will be terminated and stop running. Exception handling can be applied to prevent this anomalous behaviour of the programme exiting in an uncontrolled manner. The try and except (else, finally) keywords can be used. The potentially error prone code is put inside the try block. The error that needs to be generated if the exception occurs is put in the except block. There can be multiple except blocks, and the errors can be pre-defined by the dev. When the programme is run and the errors occur, the error will trigger the except block which will then display the error message which devs can use to debug and fix their code.

- b.) __Print/Check__ Devs can print the values of variables within their code to see if they are being assigned properly with the expected value. Usually, devs will run the code multiple times inserting prints in many places to keep track of whether the code is behaving as expected. If they find the wrong value is printed, and therefore being assigned to the variable they set to print, they can use this to identify the bug in their code, and examine the logic or how the variable is being used in order to fix it. The print statements can be removed after the code is verified to run smoothly.

1.7)	This function might throw an error if incorrect data types are given as arguments to the function in place of the parameters e.g. if ‘price’ and/or ‘cash_given’ are not given as the same data type it would raise a __TypeError__. This means if the you attempted to call the function to compare a numeric value (e.g. float/integer) to a non-numeric value (e.g. string or a list), or attempted to compare a list to anything but a list, the function cannot be called as the operator isn’t supported to compare across data types, e.g. a string to a list or a string to a integer, a string to a float etc. 

A __try-except__ block could be used to catch this exception. This means that when the function is called first the try: block will be attempted, and if any Exceptions arise (e.g. attempting to compare a string to an float) the except block will run and print the Type Error instead.

```python
def can_pay(price, cash_given):
    try:
        if cash_given >= price:
            return True
        else:
            return False
    except TypeError as exc:
        print(f'Error: {exc}')
```
With this Error Handling, attempting to compare an integer to a string as follows:
```python
print(can_pay(100, '50'))
```
Will result in the following error being printed in the console:
```python
Error: '>=' not supported between instances of 'str' and 'int'
```

1.8) __git branching is a technique to create and allow for seperate lines of development within a single repository.__ Branches are created (using 'git branch <branch_name>') often in parallel  to others, enabling many people to work con-currently and many changes to be made simultaneously. Branches can be specific to a feature or piece of code a person is working on, or can be used to encapsulate specific sets of changes without touching the main branch (or trunk) in the remote repo, until a pull request and merge is made. This means devs can work on feature developments, perform bug fixes, experiment with code and run tests independently without interfering with each other's code. Each branch represents a seperate line of development. Once a branch is made, 'git add' and 'git commit' can be used to add these changes to the person's local version of the repo, and then 'git push' can be used to push from the branch on the local repo to the remote repo. Then a Pull Request can be created, which can be checked by the dev or others, and when ready it is accepted and then merged into the trunk. Or 'git merge' can be used. Multiple branches can be created, and 'git checkout <branch_name>' is used to switch between them. Git branching enables an organised way of managing the development process and minimises the risk of destabilising the main/trunk codebase, especially when multiple people are working in parallel.

1.9) 