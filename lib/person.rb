# your code goes here
class Person

    attr_reader :name, :happiness, :hygiene, :money
    

    def initialize (name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @money = 25
    end

    def bank_account
        @money
    end

    def bank_account=(num)
        @money += num
    end

    # def happiness
    #     @happiness
    # end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0 
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0 
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @money += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"  
    end

    def work_out
        # puts "FUNCTION RAN"
        # puts "Happiness is: #{@happiness}"
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic = nil)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end

gerald = Person.new("Gerald")
jonothan = Person.new("Jonothan")

# puts gerald.hygiene
# puts gerald.happiness
# puts gerald.work_out
# puts gerald.happiness
# puts gerald.hygiene


# puts gerald.money
# gerald.getPaid(100000)
# puts gerald.money

# puts gerald.hygiene
# puts gerald.take_bath
# puts gerald.hygiene

# puts gerald.clean?
# puts gerald.happy?

# puts gerald.call_friend(jonothan)
# puts jonothan.happiness

# puts gerald.happiness
# puts gerald.start_conversation(jonothan, "politics")
# puts gerald.happiness

# puts gerald.happiness
# puts gerald.start_conversation(jonothan, "weather")
# puts gerald.happiness

# puts gerald.happiness
# puts gerald.start_conversation(jonothan)
# puts gerald.happiness
