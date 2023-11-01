# Theory Questions

1. SDLC stands for __Software Development Life Cycle__. It is a structured process that enables the development of software. SDLC methodologies that can be followed include, for example, Agile and Waterfall.

2. A __ZeroDivisionError__, because a division by 0 is not possible.

3. __git push__ is used to transfer commits made on the a local repo to the remote repo.

4. NULL is a special marker used in SQL to represent that a __data value it is in place of does not exist in the database, it is unknown or missing__.

5.

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