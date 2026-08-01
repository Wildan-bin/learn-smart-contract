# pragma version ^0.4.0
# @license MIT

my_favorite_number: public(uint256)

@external
def store(new_number: uint256) :
    self.my_favorite_number= new_number

# i learn about visibility to variable or function in this scope so the function or variable can be shown