class BusStop

attr_accessor :name, :queue

def initialize(name)
  @name = name
  @queue = []
end

def count_passengers
  return @queue.count
end

def add_passengers(person)
  @queue << person
end






end
