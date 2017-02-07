require 'minitest/autorun'

require './human'
require './coffee'

class CaffeineTest < MiniTest::Test
  def test_humans_tend_to_be_sleepy
    tyler = Human.new "Tyler"
    assert tyler.alertness < 0.1
  end

  def test_humans_need_coffee
    randy = Human.new "Randy"
    refute randy.has_coffee?
    assert randy.needs_coffee?
  end

  def test_humans_can_drink_coffee
    sherri = Human.new "Sherri"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    assert tsmf.full?

    sherri.buy tsmf
    sherri.drink!
    assert(sherri.alertness.between?(0.1, 0.33))
    refute tsmf.full?
    refute tsmf.empty?
  end

  def test_humans_can_drink_all_the_coffee
    trevor = Human.new "Trevor"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    trevor.buy tsmf

    3.times { trevor.drink! }
    assert tsmf.empty?
    assert trevor.alertness > 0.9
  end
end

class EspressoTest < MiniTest::Test
  def test_espresso_alertness_test
    nevor = Human.new "Nevor"
    esp = Espresso.new "Espresso"
    nevor.buy esp

    nevor.drink!
    assert esp.empty?
    assert nevor.alertness > 0.35
  end
end

class TeaTest < MiniTest::Test
  def test_tea_alertness_test
    evor = Human.new "Evor"
    tea = Tea.new "Green"
    evor.buy tea

    4.times { evor.drink! }
    assert tea.empty?
    assert evor.alertness > 0.25
  end
end
