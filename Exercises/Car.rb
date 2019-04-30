class DieselEngine
    def start
        p"Ready to go"
    end
end


class Wheel
    def pump_up
        p"Yey,fresh,air"
    end
end


class Navigator
    def calculate_route
        p "Ok,google! i need to go home"
    end   
end     


class Car
    attr_reader :engine,:wheels,:navigator
    def initialize (engine, navigator, wheel)
        @wheels=[]
        @engine=engine
        @navigator=navigator
        4.times{@wheels<<wheel}
    end    
    private 
    def move_to_destination
     p "It's good time to be Home"
    end
end    