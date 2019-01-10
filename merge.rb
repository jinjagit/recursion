# merge sort (array of) any number of unsorted integers, using recursion:

def merge(ary_a, ary_b) # merge 2 sorted arrays
  merged = []
  while ary_a != [] || ary_b != []
    if ary_a == [] || ary_b == []
      merged = merged + ary_a + ary_b
      ary_a, ary_b = [], []
    elsif ary_a[0] < ary_b[0]
      merged << ary_a[0]
      ary_a = ary_a.drop(1)
    else
      merged << ary_b[0]
      ary_b = ary_b.drop(1)
    end
  end
  merged
end

def merge_sort(ary) # recursively divide and merge
  if ary.length > 1
    ary_a, ary_b = ary[0...(ary.length/2)], ary[(ary.length/2)..-1]
    ary = merge(merge_sort(ary_a), merge_sort(ary_b))
  end
  ary
end


unsorted = []
9 + rand(99).times {unsorted << rand(100)}

puts "\nunsorted list of #{unsorted.length} integers:\n\n"
p unsorted

sorted = merge_sort unsorted

puts "\nsorted list of #{sorted.length} integers:\n\n"
p sorted
