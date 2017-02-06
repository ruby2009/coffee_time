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
