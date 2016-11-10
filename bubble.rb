def bubble_sort(arr)
  begin
    swapped = false
    swapped = compare(arr, swapped)
  end until swapped == false
  arr
end

def compare(arr, swapped)
  (arr.length - 1).times do |i|
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i] 
      swapped = true
    end
  end
  swapped
end

p bubble_sort( [1,3,7,2,5] )
