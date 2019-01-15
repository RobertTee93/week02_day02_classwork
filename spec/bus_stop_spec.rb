require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")
require_relative("../BusStop")

class TestBusStop < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Glasgow")
    @person1 = Person.new("Jimbob", 55)
    @person2 = Person.new("Robert", 25)
  end

  def test_bus_stop_has_name
    assert_equal("Glasgow", @bus_stop.name)
  end

  def test_bus_stop_queue_has_no_passengers
    assert(0, @bus_stop.count_passengers)
  end

  def test_bus_stop_can_add_passengers
    @bus_stop.add_passengers(@person1)
    assert(1, @bus_stop.count_passengers)
  end

end
