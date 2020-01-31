require 'pry'
class Person
    attr_reader :name 
    attr_accessor :bank_account
    # this is  sitter
    def happiness= (happiness)
        #@happiness = happiness.clamp(0,10)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
        @happiness =0
        end
    end 
    # # this is getter 
    def happiness
       @happiness 
    end
    def hygiene= (value)
        @hygiene = value
        if @hygiene > 10 
            @hygiene = 10
        elsif @hygiene < 0 
            @hygiene = 0
        end
    end
    def hygiene
        @hygiene
    end
    def initialize(name, happiness = 8)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8     
    end
    def happy?
        if @happiness > 7
            return true
        else
            false
        end
    end
    def clean?
        if @hygiene >7
            return true
        else 
            return false
        end 
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        self.hygiene +=4
       "♪ Rub-a-dub just relaxing in the tub ♫" 
    end
    def work_out
        self.hygiene -=3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end
    def call_friend(caller)
        self.happiness +=3
        caller.happiness +=3
        "Hi #{caller.name}! It's #{self.name}. How are you?"
    end
    def start_conversation (person , topic)
        if topic == "politics"
            self.happiness -=2 
            person.happiness -=2
         return "blah blah partisan blah lobbyist"
         elsif topic == "weather"
            self.happiness+=1
            person.happiness+=1
            "blah blah sun blah rain"
         else
            'blah blah blah blah blah'
        end
    end
    # binding.pry
    
    

    
end 


#binding.pry
0