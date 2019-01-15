require("minitest/autorun")
require("minitest/rg")
require_relative("../Person")


class TestPerson < MiniTest::Test

def setup

  @person1 = Person.new("Jimbob", 55)

end

def test_person_has_name
  assert_equal("Jimbob", @person1.name)
end

def test_person_has_age
  assert_equal(55, @person1.age)
end











end
