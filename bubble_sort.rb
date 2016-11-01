def bubble_sort(arr)
  bubble_sort_by(arr) { |left, right| left - right }
end


def bubble_sort_by(arr)
  swapped = true
  while swapped
    swapped = false
    arr.each_cons(2).with_index do |(left, right), i|
      if yield(left,right) > 0
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end
  arr
end



a = [1, 4, 1, 3, 4, 1, 3, 3]
p bubble_sort(a)
