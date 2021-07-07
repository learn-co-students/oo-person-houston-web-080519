require 'pry'
class Person
  
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def happiness=(happiness_level)
    @happiness = happiness_level
    if happiness_level > 10 
      @happiness = 10
      elsif happiness_level < 0
        @happiness = 0
    end
    return @happiness
  end
  
  def hygiene=(hygiene_level)
    @hygiene = hygiene_level
    if hygiene_level > 10
      @hygiene = 10
      elsif hygiene_level < 0
        @hygiene = 0
    end
  end
  
  def happy?
    @happiness > 7 ? true : false
  end
  
  def clean?
    @hygiene > 7 ? true : false
  end
  
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  
  def take_bath
    @hygiene += 4
    if @hygiene > 10
      puts "♪ Rub-a-dub just relaxing in the tub ♫"
      self.hygiene=(@hygiene)
    else
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  end
  
  def work_out
    @hygiene -= 3
    @happiness += 2
    if @hygiene < 0 
      self.hygiene=(@hygiene)
    end
    if @happiness > 10
      self.happiness=(@happiness)
    end
    return "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    @happiness += 3
    friend.happiness += 3
    if @happiness > 10
      self.happiness=(@happiness)
      elsif friend.happiness > 10
      friend.happiness=(friend.happiness)
    end
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end
  
  def start_conversation(friend, topic)
    if topic == "politics"
      @happiness -= 2
      friend.happiness -= 2
      if @happiness < 0
        self.happiness=(@happiness)
        elsif friend.happiness < 0
        friend.happiness=(friend.happiness)
      end
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      @happiness += 1
      friend.happiness += 1
      if @happiness > 10
        self.happiness=(@happiness)
        elsif friend.happiness > 10
        friend.happiness=(friend.happiness)
      end
      return "blah blah sun blah rain"
    elsif topic != "politics" || topic != "weather"
      return "blah blah blah blah blah"
    end
  end
  
end