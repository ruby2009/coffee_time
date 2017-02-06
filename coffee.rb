class Coffee

attr_accessor :name, :full

  def initialize(name, num=3)
    @name = name
    @full = num
  end

  def full?
    full == 3
  end

  def empty?
    full == 0
  end

end

class Espresso < Coffee

  def initialize(num)
    super(num, 1)
  end

  def full?
    full == 1
  end
end
