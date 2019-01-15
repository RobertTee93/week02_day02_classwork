
class Bus
  attr_accessor :route, :destination


  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum Brum"
  end

  def count_passengers
    return @passengers.count
  end

  def pickup(person)
    @passengers << person
  end

  def drop_off(person)
    for passenger in @passengers
      if passenger == person
        @passengers.delete(passenger)
      end
    end
    return passenger
  end

  def empty()
    @passengers.clear()
  end

def pickup_from_stop(bus_stop)
  for passenger in bus_stop.queue
    @passengers << passenger
  end
end

end
