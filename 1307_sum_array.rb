nums1 = [1, 2, 3]
nums2 = [4, 6, 8]

def sum_array2(nums1, nums2)
  nums1.zip(nums2).map{|a, b| a + b }
end

puts "num3 = #{sum_array2(nums1, nums2)}"