# pragma version ^0.4.0

# Making reference data types
# 1. Fixed sized list
nums: public(uint256[10])

# 2. Mappings
myMap: public(HashMap[address, uint256])

@deploy
def __init__():
    self.nums[0] = 123
    self.nums[1] = 456

    self.myMap[msg.sender] = 1
    self.myMap[msg.sender] = 11