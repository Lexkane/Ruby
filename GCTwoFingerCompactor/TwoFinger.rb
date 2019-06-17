def compact
    heap=[....] #many slots
    left=0
    right= heap.length-1

    while left<right
                left_slot=heap[left]
                right_slot=heap[right]

                if is_empty?(left_slot) && !is_empty?(right_slot) 
                        swap(left,right)
                        heap[right]=T_MOVED.new(left) #leave forwarding adress
                end
                
                while !is_empty?(heap[left])
                        left +=1
                end
                
                
                while is_empty?(heap[right]) || ! can_move?(heap[right])
                        right-=1
                end
        end
end                