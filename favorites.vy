# pragma version ^0.4.0
# @license MIT

struct Person:
    favorite_number: uint256
    name: String[100]

registered_person : Person

my_name: public(String[100])

my_favorite_number: public(uint256)
list_of_numbers: public(uint256[5])
index: public(uint256)

@deploy
def __init__():
    self.my_favorite_number = 7
    self.registered_person = Person({
        favorite_number : 25,
        name : "Patrick "
    })
    self.my_name = 'Jane'

@external
def store(new_number: uint256):
    self.my_favorite_number= new_number
    # self.retrieve()

@view
@external
def retrieve() -> uint256:
    return self.my_favorite_number

@view
@external
def retrieve_name() -> String[200]:
    return concat(self.registered_person.name, self.my_name)

@external
def add_number(favorite_number: uint256):
    self.list_of_numbers[self.index] = favorite_number
    self.index = self.index+1

# saya belajar mengenai function yang bisa dianggap sebagai transaction (default)
# dan juga function yang dianggap sebagai view
# view function itu tidak membutuhkan gas
# tetapi membutuhkan gas ketika dipanggil oleh trasaction function

# transaction without view
# cost : 26.333 gas

# transaction with view
# cost : 43581 gas

