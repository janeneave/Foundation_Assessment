import unittest


def is_pangram(string):
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    for char in alphabet:
        if char not in string.lower():
            return False
    return True


class PrimeNumberTextCase(unittest.TestCase):
    # test for if input is a pangram
    def test_pangram(self):
        pangrams = ['the quick brown fox jumps over the lazy dog',
                    'the five boxing wizards jump quickly']
        for pangram in pangrams:
            self.assertTrue(is_pangram(pangram), f'{pangram} is a pangram')

    # test for if input is not a pangram
    def test_non_pangram(self):
        pangrams = ['the quick brown fox', 'five boxing wizards', 'test', 'hi']
        for pangram in pangrams:
            self.assertFalse(is_pangram(pangram), f'{pangram} is not a pangram')

    # test for if input includes special characters
    def test_special_characters(self):
        pangrams = ['the! quick! brown f!ox jumps, over the. lazy dog',
                    'the. five! boxing wi!zards jum.p quickly']
        for pangram in pangrams:
            self.assertTrue(is_pangram(pangram), f'{pangram} is a pangram')

    # test for if input includes upper case characters
    def test_upper_case_characters(self):
        pangrams = ['THE QUICK BROWN FOX jumps over the LAZY DOG']
        for pangram in pangrams:
            self.assertTrue(is_pangram(pangram), f'{pangram} is a pangram')

    # test for if input includes repeated characters
    def test_repeat_characters(self):
        pangrams = ['the quick brown brown fox jumps jumps over the lazy dog',
                    'the five wizards boxing boxing wizards jump quickly']
        for pangram in pangrams:
            self.assertTrue(is_pangram(pangram), f'{pangram} is a pangram')

    # test for if input has all alphabet characters bar one (pangrams[0] = no 'n', pangrams[1] = no 'z'
    def test_every_character_but_one(self):
        pangrams = ['the quick brow fox jumps over the lazy dog',
                    'the five boxing wiards jump quickly']
        for pangram in pangrams:
            self.assertFalse(is_pangram(pangram), f'{pangram} is a pangram')

    # test with an empty string
    def test_string_empty(self):
        pangram = ''
        self.assertFalse(is_pangram(pangram), f'{pangram} is not a pangram')