def merge_sort(arr)
  return arr if arr.length == 1

  midpoint = (arr.length - 1) / 2
  left = arr[0..midpoint]
  right = arr[midpoint..-1]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  merged_arr = []

  until left.empty? && right.empty?
    left_value = left[0]
    right_value = right[0]
    if right.empty? || left[0] < right[0]
      merged_arr << left_value
      left = left[1..-1]
      left_value = left[0]
    elsif left.empty? || left[0] > right[0]
      merged_arr << right_value
      right = right[1..-1]
      right_value = right[0]
    end
  end

  merged_arr
end

p merge_sort([4, 1, 8, 11, 3, 2, 10])