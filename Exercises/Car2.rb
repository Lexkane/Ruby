class Diesel
    def start_engine
        "Disel started"
    end    
end

class Gasoline
    def start_engine
        "Gasoline started"
    end
end

class Nuclear
    def start_engine
        "Nuclear"
    end
end

class Car
    attr_reader:engine
    def initialize(engine)
        @engine=engine
    end

    def start_engine
        engine.start_engine
    end
end        

c=Car.new(Nuclear.new)
c.start_engine

c=Car.new(Diesel.new)
c.start_engine
    
    