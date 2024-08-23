def merge_sort(arr)
  return arr unless (arr.size - 1).positive?

  # p arr
  mid = ((arr.size - 1) / 2).to_i
  left = arr[0..mid]
  right = arr[(mid + 1)..(arr.size - 1)]

  sorted_right = merge_sort(right)
  sorted_left = merge_sort(left)
  merge(sorted_left, sorted_right)
end

def merge(arr1, arr2)
  i = 0
  j = 0
  k = 0
  result = []

  while i < arr1.size && j < arr2.size
    if arr1[i] < arr2[j]
      result << arr1[i]
      k += 1
      i += 1
    else
      result << arr2[j]
      k += 1
      j += 1
    end
  end

  while i < arr1.size
    result << arr1[i]
    i += 1
  end

  while j < arr2.size
    result << arr2[j]
    j += 1
  end
  result
end

# [3, 2, 1, 13, 8, 5, 0, 1]
# [105, 79, 100, 110]
p merge_sort([105, 79, 100, 110])
