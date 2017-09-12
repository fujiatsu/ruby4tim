nums1 = [1, 2, 3]
nums2 = [4, 6, 8]

def sum_array(nums1, nums2)
  nums3 = Array.new
  i = 0
  if nums1.length != nums2.length
    return "infeasible"
  end
  while i < nums1.length
    nums3 << nums1[i] + nums2[i]
    i += 1
  end
  return nums3
end

def sum_array2(nums1, nums2)
  nums4 = Array.new
  if nums1.length != nums2.length
    return "infeasible"
  end
  nums1.zip(nums2){|a, b|
    nums4 << a + b
  }
  return nums4
end

puts "num3 = #{sum_array(nums1, nums2)}"
puts "num4 = #{sum_array2(nums1, nums2)}"