# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, 
#with "*~*" at the beginning and end of the string

class Unicorn
    def initialize(name)
        @color = "silver"
        @name = name
    end

    def say
        @sparkles = "*~*"
        "#{@sparkles} My name is #{@name} and I am a majestic Unicorn#{@sparkles}"
    end
end

unicorn_1 = Unicorn.new("Elyra")
p unicorn_1
p unicorn_1.say


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic
#if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name)
        @name = name
        @pet = "bat"
        @is_thirsty = true
    end

    def drink
        @is_thirsty = false
    end

    def change_pet(new_pet)
        @pet = new_pet
    end
end

dracula = Vampire.new("Jacques")
p dracula

dracula.drink
p dracula

dracula.change_pet("spider")
p dracula



#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @meals = 0
    end

    def eat_method
        if @meals < 4
         @meals += 1
        else 
            @is_hungry = false
        end
    end
end


    dragon_1 = Dragon.new("Pete", "Antonius", "Purple")
    p dragon_1
  5.times do dragon_1.eat_method
  end
  p dragon_1

    

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. 
# once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. 
# once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_old = false
        @is_adult = false
        @has_ring = false
    end

    
    if @name == "Frodo"
        @has_ring = true
    end

    def celebrate_birthday
        @age += 1
        if @age >= 33
            @is_adult = true
        end

        if @age >= 101
            @is_old = true
        end
    end

    def one_ring
        if @name == "Frodo"
            @has_ring = true
        end
    end
end

hobbit_1 = Hobbit.new("Frodo", "Whiny")
p hobbit_1
p hobbit_1.celebrate_birthday
p hobbit_1
p hobbit_1.one_ring
p hobbit_1


