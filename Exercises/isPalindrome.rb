foo = "racecar"
def foo.palindrome?
  self == self.reverse
end