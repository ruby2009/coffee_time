class Coffee

attr_accessor :name, :full, :alert

  def initialize(name, num=3, awake=0.32)
    @name = name
    @full = num
    @alert = awake
  end

  def full?
    full == 3
  end

  def empty?
    full == 0
  end
end

class Espresso < Coffee

  def initialize(name, num=1, awake=0.4)
    @name = name
    @full = num
    @alert = awake
  end

  def full?
    full == 1
  end
end

class Tea < Coffee

  def initialize(name, num=3, awake=0.25)
    @name = name
    @full = num
    @alert = awake
  end
end
