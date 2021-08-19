class Calculator
  attr_reader :a, :b, :c

  def initialize(options={})
    @a = options[:a]
    @b = options[:b]
    @c = options[:c]
  end

  def sum(a, b)
    a + b
  end

  def bhaskara(type)
    if type == :positive
      (-b + Math.sqrt(delta)) / (2 * a)
    else
      (-b - Math.sqrt(delta)) / (2 * a)
    end
  end

  def delta
    b**2 - 4 * a * c
  end
end