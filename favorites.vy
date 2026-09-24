# pragma version ^0.4.0
# @license MIT

my_favorite_number: public(uint256)
list_of_numbers: public(uint256[5])

@deploy
def __init__():
    self.my_favorite_number = 7

@external
def store(new_number: uint256):
    self.my_favorite_number= new_number
    # self.retrieve()

@view
@external
def retrieve() -> uint256:
    return self.my_favorite_number

@external
def add_number(favorite_number: uint256):
    self.list_of_numbers[0] = favorite_number

# saya belajar mengenai function yang bisa dianggap sebagai transaction (default)
# dan juga function yang dianggap sebagai view
# view function itu tidak membutuhkan gas
# tetapi membutuhkan gas ketika dipanggil oleh trasaction function

# transaction without view
# cost : 26.333 gas

# transaction with view
# cost : 43581 gas

