# 1. Implement merge sort. What's the bigO and why?
class MergeSort

  def initialize
  end

  def merge(left, right)
    ordered = []
    until left.empty? || right.empty?
      if left[0] >= right[0]
        ordered << left.shift
      else
        ordered << right.shift
      end
    end
    ordered + left + right
  end

  def sort(array)
    if array.length == 1
      return array
    end
    left = array[0...(array.length / 2)]
    right = array[(array.length / 2)..-1]
    sort(merge(left, right))
  end

end

test = MergeSort.new
sorted = test.sort([1, 3, 5, 2, 4])
