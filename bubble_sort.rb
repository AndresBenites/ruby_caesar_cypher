# procedure bubbleSort(A : list of sortable items)
#     n := length(A)
#     repeat
#         swapped := false
#         for i := 1 to n-1 inclusive do
#             /* if this pair is out of order */
#             if A[i-1] > A[i] then
#                 /* swap them and remember something changed */
#                 swap(A[i-1], A[i])
#                 swapped := true
#             end if
#         end for
#     until not swapped
# end procedure

def bubble_sort(array)
    array.each_with_index do |number, i|
        for j in 1..array.length - 1 do
            if array[j-1] > array[j]
                array[j-1], array[j] = array[j], array[j-1]
            end
        end
    end
    return array
end

p bubble_sort([9,8,7,6,5,4,3,2,1])