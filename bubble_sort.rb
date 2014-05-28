class Array

  def bubblesort!
    each_index do |j|
      j.upto(length - 1) do |i|
        self[i-1], self[i] = self[i], self[i-1] if self[i-1] > self[i]
      end
    end
    self
  end

end
some_array = [9,4,3,5,7,8,5]
some_array.bubblesort!
puts some_array