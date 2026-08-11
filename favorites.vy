# pragma version ^0.4.0
# @license MIT

my_favorite_number: public(uint256)

@external
def store(new_number: uint256):
    self.my_favorite_number= new_number
    self.retrieve()

@view
@internal
def retrieve() -> uint256:
    return self.my_favorite_number

# saya belajar mengenai function yang bisa dianggap sebagai transaction (default)
# dan juga function yang dianggap sebagai view
# view function itu tidak membutuhkan gas
# tetapi membutuhkan gas ketika dipanggil oleh trasaction function

# transaction without view
# cost : 26.333 gas

# transaction with view
# cost : 43581 gas

