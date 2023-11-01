# Theory Questions

1. SDLC stands for __Software Development Life Cycle__. It is a structured process that enables the development of software. SDLC methodologies that can be followed include, for example, Agile and Waterfall.

2. A __ZeroDivisionError__, because a division by 0 is not possible.

3. __git push__ is used to transfer commits made on the a local repo to the remote repo.

4. NULL is a special marker used in SQL to represent that a __data value it is in place of does not exist in the database, it is unknown or missing__.

5.	Scrum Master chiefly facilitates the application of Scrum and keeps the Scrum up to date. They're responsibilities include: 

    - a.) __Organising and conducting Scrum events__ such as: Sprint Planning/Reviews, Daily Stand-Ups and Restrospectives
    - b.) __Coaching, mentoring and training the teams.__ Helps teams to become self-organising, empowers them with training and aids them by removing impediments. 

6.

7.	This function might throw an error if incorrect data types are given as arguments to the function in place of the parameters e.g. if ‘price’ and/or ‘cash_given’ are not given as the same data type it would raise a __TypeError__. This means if the you attempted to call the function to compare a numeric value (e.g. float/integer) to a non-numeric value (e.g. string or a list), or attempted to compare a list to anything but a list, the function cannot be called as the operator isn’t supported to compare across data types, e.g. a string to a list or a string to a integer, a string to a float etc. 

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

8. __git branching is a technique to create and allow for seperate lines of development within a single repository.__ Branches are created (using 'git branch <branch_name>') often in parrallel to others, enabling many people to work con-currently and many changes to be made simultanously. Branches can be specific to a feature or piece of code a person is working on, or can be used to encapsulate specific sets of changes without touching the main branch (or trunk) in the remote repo, until a pull request and merge is made. This means devs can work on feature developments, perform bug fixes, experiment with code and run tests independently without interfering with each other's code. Each branch represents a seperate line of development. Once a branch is made, 'git add' and 'git commit' can be used to add these changes to the person's local version of the repo, and then 'git push' can be used to push from the branch on the local repo to the remote repo. Then a Pull Request can be created, which can be checked by the dev or others, and when ready it is accepted and then merged into the trunk. Or 'git merge' can be used. Multiple branches can be created, and 'git checkout <branch_name>' is used to switch between them. Git branching enables an organised way of managing the devlopment process and minimises the risk of destabilising the main/trunk codebase, especially when multiple people are working in parrallel.