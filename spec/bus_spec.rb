require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")
require_relative("../BusStop")


class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(12, "Hawaii")
    @person1 = Person.new("Jimbob", 55)
    @person2 = Person.new("Robert", 25)
    @bus_stop = BusStop.new("Glasgow")
  end

  def test_bus_has_destination
    assert_equal("Hawaii", @bus.destination)
  end

  def test_bus_has_route
    assert_equal(12, @bus.route)
  end

  def test_bus_can_drive
    assert_equal("Brum Brum", @bus.drive)
  end

  def test_bus_starts_with_no_passengers
    assert_equal(0, @bus.count_passengers)
  end

  def test_bus_can_pick_up_passengers
    @bus.pickup(@person1)
    assert_equal(1, @bus.count_passengers)
  end

  def test_bus_can_drop_off_passengers
    @bus.pickup(@person1)
    @bus.pickup(@person2)
    @bus.drop_off(@person1)
    assert_equal(1, @bus.count_passengers)
  end

  def test_bus_can_empty_all_passengers
    @bus.pickup(@person1)
    @bus.pickup(@person2)
    @bus.empty
    assert_equal(0, @bus.count_passengers())
  end

  def test_bus_can_pickup_from_stop
    @bus_stop.add_passengers(@person1)
    @bus_stop.add_passengers(@person2)
    @bus.pickup_from_stop(@bus_stop)
    assert_equal(2, @bus.count_passengers)
  end
end
