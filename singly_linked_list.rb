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
        puts "attempting to add #{value}"
        # at this step current node is the first node
        if current_node == nil
            puts "this linked list currently doesn't have head, adding #{value} as head\n"
            current_node = Node.new(value)
            @head = current_node
        else
            while (current_node.next_node != nil)
                current_node = current_node.next_node
            end
            puts "reached end of linked list, appending value\n"
            current_node.next_node = Node.new(value)
        end
    end

    def print_list()
        elements = []
        current_node = @head
        while current_node
            elements.append(current_node)
            current_node = current_node.next_node
            puts "added node to list"
        end
        elements.each do |item, index|
            puts "Node #{index}: Value = #{item.value} || next_node = #{item.next_node}"
        end
    end
end

linkedlist1 = LinkedList.new()
linkedlist1.append_to_tail(1)
linkedlist1.append_to_tail(2)
linkedlist1.append_to_tail(3)
linkedlist1.print_list