## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a object
class Dog < Animal

    def initialize(name)
        ## initialize has-a name
        @name = name
    end
end

## Cat is-a pbject
class Cat < Animal

    def initialize(name)
        ## initialize has-a name
        @name = name
    end
end

## Person is-a object
class Person

    def initialize(name)
        ## initialize has-a name
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet 
end

## Emplayee is-a object
class Employee < Person

    def initialize(name, salary)
        ## initialize has-a name
        super(name)
        ## Salary is an object
        @salary = salary
    end

end

## Fish is-a object
class Fish
end

## Salmon is-a fish
class Salmon < Fish
end

## Halibu is-a fish 
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## Satan is-a cat
satan = Cat.new("Satan")

## mary is-a person
mary = Person.new("Mary")

## Mary has-a pwt called satan
mary.pet = satan

## Frank is-a employee and has-a 120000 salary
frank = Employee.new("Frank", 120000)

## frank has-a per called rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is a Halibut
harry = Halibut.new()