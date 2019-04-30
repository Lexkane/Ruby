class Person
  include Comparable
  attr_reader :name, :age

  def initialize(name:, age:) ... end

  def to_h ... end

  def <=>(other)
    to_h <=> other.to_h
  end
end

Person.new(name: "Dave", age: 28, address: "1001 S Main St")

person_hash = { name: "Dave", age: 28, address: "1001 S Main St" }
Person.new(name: person_hash[:name], age: person_hash[:age])

person_hash = { name: "Dave", age: 28, address: "1001 S Main St"}
Person.new(person_hash.select{|k,_| Person.members.include?(k)})

members = Person.instance_method(:initialize).parameters.map(&:last)
puts members
#=> name
    age

Person.new(person_hash.select{|k,_| members.include?(k)})

#http://dustinzeisler.com/ruby/2019/02/20/ruby-struct.htm