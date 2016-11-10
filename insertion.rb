def insert_sort(array)
  (array.length - 1).times do |index|
    insert(array, index, array[index + 1])
  end

  array
end

def insert(array, right_index, value)
  i = right_index
  while(i >= 0 && array[i] > value)
    array[i+1] = array[i]
    i -= 1
  end

  array[i+1] = value;
end

p insert_sort([4, 1, 8, 11, 3, 2, 10])