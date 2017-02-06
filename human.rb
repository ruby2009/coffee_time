class Human
  attr_accessor :name,
                :alertness,
                :item

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
  end

  def has_coffee?
    item
  end

  def needs_coffee?
    if item
      then false
    else
      true
    end
  end

  def buy(coffee)
    self.item = coffee
  end

  def drink!
    item.full -= 1
    self.alertness += 0.32
  end

end
