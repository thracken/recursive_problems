def merge_sort(array)
  if array.length > 1 #base case
    half = array.length/2
    left, right = merge_sort(array[0..half-1]), merge_sort(array[half..-1])
    sorted = []

    while left.length > 0 && right.length > 0
      if left[0] < right[0]
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    if left.length == 0
      sorted += right
    else
      sorted += left
    end
    return sorted
  end
  return array
end

[7,6,5,4,3,2,1]
