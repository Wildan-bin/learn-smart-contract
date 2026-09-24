# pragma version ^0.4.0
# @license MIT

struct Person:
    favorite_number: uint256
    name: String[100]

my_name: public(String[100])
my_favorite_number: public(uint256)

list_of_numbers: public(uint256[5])
list_of_people: public(Person[5])
index: public(uint256)

@deploy
def __init__():
    self.my_favorite_number = 7
    self.index = 0
    self.my_name = 'Jane'

@external
def store(new_number: uint256):
    self.my_favorite_number= new_number
    # self.retrieve()

@view
@external
def retrieve() -> uint256:
    return self.my_favorite_number

@external
def add_number(name: String[100], favorite_number: uint256):
    self.list_of_numbers[self.index] = favorite_number
    registered_person : Person = Person(
        favorite_number = favorite_number,
        name = name
    )
    self.list_of_people[self.index] = registered_person
    self.index = self.index+1

@view
@external
def retrieve_name() -> String[300]:
    return concat(self.list_of_people[0].name, " has ", uint2str(self.list_of_people[0].favorite_number), " books ")

# saya belajar mengenai function yang bisa dianggap sebagai transaction (default)
# dan juga function yang dianggap sebagai view
# view function itu tidak membutuhkan gas
# tetapi membutuhkan gas ketika dipanggil oleh trasaction function

# transaction without view
# cost : 26.333 gas

# transaction with view
# cost : 43581 gas

