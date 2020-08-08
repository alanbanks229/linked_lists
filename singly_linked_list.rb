class Node
    attr_accessor :value, :next_node
    def initialize(value)
        @value = value;
        @next_node = nil;
    end
end

class LinkedList
    def initialize()
        @head = nil;
    end

    def append_to_tail(value)
        current_node = @head

        # at this step this instance of the linked list currently
        # does not have a head node, so we add #{value} as head
        if current_node == nil
            current_node = Node.new(value)
            @head = current_node
        else
            # while the current node iteration has a next node
            while (current_node.next_node != nil)
                current_node = current_node.next_node
            end

            # hitting this line below means we've reached a point where
            # the current node's pointer is null... we are now giving it a value
            current_node.next_node = Node.new(value)
        end
    end

    def delete_value(value)
        current_node = @head
        if current_node.value == value
            @head = current_node.next_node
        end

        while current_node.next_node != nil
            # If the next node has a value that matches the parameter
            if current_node.next_node.value == value
                # if the matching (next) node points to another valid node
                if current_node.next_node.next_node != nil
                    # set the current node's pointer to be the NEXT, NEXT, Node
                    current_node.next_node = current_node.next_node.next_node
                else
                    # if matching node does not have pointer...
                    current_node.next_node = nil
                end
                return puts "found node, updated linkedlist"
            end
            # iterate
            current_node = current_node.next_node
        end
    end

    def print_list()
        elements = []
        current_node = @head
        while current_node
            elements.append(current_node)
            current_node = current_node.next_node
        end
        elements.each do |item, index|
            # ternary operator for conditional print statements
            item.next_node != nil ?
                (puts "Node #{item}: Value = #{item.value} || next_node = #{item.next_node}")
                :
                (puts "Node #{item}: Value = #{item.value} || next_node = Null")
        end
    end

end

linkedlist1 = LinkedList.new()
linkedlist1.append_to_tail(1)
linkedlist1.append_to_tail(2)
linkedlist1.append_to_tail(3)
linkedlist1.append_to_tail(4)
linkedlist1.delete_value(4)
linkedlist1.print_list