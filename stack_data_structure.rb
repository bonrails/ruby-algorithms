require 'pry'

class Stack
  def initialize()
    @stack=Array.new()
  end

  def push(x)
    @stack[@stack.length] = x
    self
  end

  def pop
    if @stack.length > 0
      temp = @stack[@stack.length - 1]
      @stack.delete_at @stack.length - 1
      temp
    else
      "empty stack"
    end
  end

  def print
    @stack
  end

end

o=Stack.new()
o.push(8).push(2)
p o
