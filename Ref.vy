# pragma version ^0.4.0

# Making reference data types
# 1. Fixed sized list
nums: public(uint256[10])

# 2. Mappings
myMap: public(HashMap[address, uint256])

# 3. Structs
struct Person:
    name: String[10]
    age: uint256

person: public(Person)

@deploy
def __init__():
    self.nums[0] = 123
    self.nums[1] = 456

    self.myMap[msg.sender] = 1
    self.myMap[msg.sender] = 11
    
    self.person.name = "Wildan"
    self.person.age = 21

    p: Person = self.person
    p.name = "Robin"
    p.age = 22