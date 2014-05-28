# Selection sort O(n^2)

class  Array

  def selecttion_sort!

    (length - 1 ).times do |i|
      min_index = i

      i.next.upto(length - 1) do |j|
        min_index = j if self[j] < self[min_index]
      end
      #swap
      self[i], self[min_index] = self[min_index], self[i] if min_index != i
    end
    self
  end
end

a = [91,81,23,62,1,2,5]

p a.selecttion_sort!