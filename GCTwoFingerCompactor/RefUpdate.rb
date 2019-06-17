def update_references
    heap.each do |slot|
        next if is_empty?(slot) || is_moved?(slot)

        slot.update_references.each_with_index do |child,i|
            if is_moved?(child)
                slot.set_reference(i,child.new_location)
            end
        end
    end
end
       